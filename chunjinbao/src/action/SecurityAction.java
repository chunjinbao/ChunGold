package action;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import Util.ValidateCard;
import Util.ValidateIdCard;

public class SecurityAction {
	public String authen(){
		return "authen";
	}
	public String tradePsw(){
		return "tradePsw";
	}
	
	public void validateCardId(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String cardNum = request.getParameter("idcard");
		HttpServletResponse response = ServletActionContext.getResponse(); 
		String result = "身份证不正确";
		try {
			result = ValidateIdCard.IDCardValidate(cardNum);
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		//System.out.println(result);
		response.setContentType("text/plain;charset=UTF-8");
		try {
			if(result.equals("True")){
				response.getWriter().write("ok");
			}else{
				response.getWriter().write(result);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public String turnPay(){
		return "turnPay";
	}

}
