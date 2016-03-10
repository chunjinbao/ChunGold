package Util;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import net.sf.json.JSONObject;

public class GetGoldPrice {
    public static final String DEF_CHATSET = "UTF-8";
    public static final int DEF_CONN_TIMEOUT = 30000;
    public static final int DEF_READ_TIMEOUT = 30000;
    public static String userAgent =  "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36";

    public static final String APPKEY ="835ab4dea3caf6cced319429c8790572";
 
    //1.上海黄金交易所
    @SuppressWarnings("unchecked")
	public static String getRequest1(){
        String resultReturn  ="404";
        String result = null;
        String url ="http://web.juhe.cn:8080/finance/gold/shgold";//请求接口地址
        @SuppressWarnings("rawtypes")
		Map params = new HashMap();//请求参数
            params.put("key",APPKEY);//APP Key
            params.put("v","");//JSON格式版本(0或1)默认为0
 
        try {
            result =net(url, params, "GET");
            JSONObject object = JSONObject.fromObject(result);
            //解包
            //System.out.println(result);
            if(object.getInt("error_code")==0){
            	String getResult = object.get("result").toString();
            	String generateResult = getResult.substring(1, getResult.length()-1);
            	JSONObject getResultObject = JSONObject.fromObject(generateResult);
            	String  getGoldResult = getResultObject.get("4").toString();
            	JSONObject getPriceResult = JSONObject.fromObject(getGoldResult);
            	return (String) getPriceResult.get("latestpri");
            }else{
                //System.out.println(object.get("error_code")+":"+object.get("reason"));
            	return resultReturn;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
		return resultReturn;
    }
 
 
 
 
    public static void main(String[] args) {
    	String s = getRequest1();
    	System.out.println(s);
    }
 
    /**
     *
     * @param strUrl 请求地址
     * @param params 请求参数
     * @param method 请求方法
     * @return  网络请求字符串
     * @throws Exception
     */
    @SuppressWarnings({ "unchecked", "rawtypes" })
	public static String net(String strUrl, Map params,String method) throws Exception {
        HttpURLConnection conn = null;
        BufferedReader reader = null;
        String rs = null;
        try {
            StringBuffer sb = new StringBuffer();
            if(method==null || method.equals("GET")){
                strUrl = strUrl+"?"+urlencode(params);
            }
            URL url = new URL(strUrl);
            conn = (HttpURLConnection) url.openConnection();
            if(method==null || method.equals("GET")){
                conn.setRequestMethod("GET");
            }else{
                conn.setRequestMethod("POST");
                conn.setDoOutput(true);
            }
            conn.setRequestProperty("User-agent", userAgent);
            conn.setUseCaches(false);
            conn.setConnectTimeout(DEF_CONN_TIMEOUT);
            conn.setReadTimeout(DEF_READ_TIMEOUT);
            conn.setInstanceFollowRedirects(false);
            conn.connect();
            if (params!= null && method.equals("POST")) {
                try {
                    DataOutputStream out = new DataOutputStream(conn.getOutputStream());
                        out.writeBytes(urlencode(params));
                } catch (Exception e) {
                    // TODO: handle exception
                }
            }
            InputStream is = conn.getInputStream();
            reader = new BufferedReader(new InputStreamReader(is, DEF_CHATSET));
            String strRead = null;
            while ((strRead = reader.readLine()) != null) {
                sb.append(strRead);
            }
            rs = sb.toString();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (reader != null) {
                reader.close();
            }
            if (conn != null) {
                conn.disconnect();
            }
        }
        return rs;
    }
 
    //将map型转为请求参数型
    @SuppressWarnings("rawtypes")
	public static String urlencode(Map<String,Object>data) {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry i : data.entrySet()) {
            try {
                sb.append(i.getKey()).append("=").append(URLEncoder.encode(i.getValue()+"","UTF-8")).append("&");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        return sb.toString();
    }
}