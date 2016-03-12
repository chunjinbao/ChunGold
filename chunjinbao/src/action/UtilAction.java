package action;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import Util.GetGoldPrice;

import com.opensymphony.xwork2.ActionSupport;

public class UtilAction extends ActionSupport{
	public void rtGoldPrice(){
		HttpServletResponse response = ServletActionContext.getResponse(); 

		response.setContentType("text/plain;charset=UTF-8");
		try {
			response.getWriter().write(GetGoldPrice.getRequest1());
		} catch (IOException e) {
			e.printStackTrace();
		} 
	}
}
