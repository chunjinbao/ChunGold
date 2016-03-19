package action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import service.UserService;
import Util.GetGoldPrice;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import entity.User;

public class LoginAction extends ActionSupport{
	private User user;
	private UserService userService;
	
	public String preRegister(){
		
		return "regNext";
	}
	
	public String register(){
		if(user==null){
			return "reg";
		}else{
			userService.register(user);
			
			return Action.SUCCESS;
		}
	}
	
	public String login(){
		User dbUser = userService.findUserByTel(user.getTel());
		if(dbUser==null || !user.getPassword().equals(dbUser.getPassword())){
			
		}else{
			HttpSession session = ServletActionContext.getRequest().getSession();
			
			session.setAttribute("userId", dbUser.getUserId());
			
			session.setAttribute("curUsrTel", dbUser.getTel());
			
			session.setAttribute("userName", dbUser.getUserName());
			
			session.setAttribute("shareId", dbUser.getshareId());
			
		}
		return ServletActionContext.getRequest().getSession().getAttribute("requestURL").toString();
	}
	public void logout(){
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.invalidate();
		
		HttpServletResponse response = ServletActionContext.getResponse(); 

		response.setContentType("text/plain;charset=UTF-8");
		
		try {
			response.getWriter().write("ok");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public void checkTel(){
		HttpServletRequest request = ServletActionContext.getRequest();
		User dbUser = userService.findUserByTel(request.getParameter("tel"));
		HttpServletResponse response = ServletActionContext.getResponse(); 

		response.setContentType("text/plain;charset=UTF-8");
		try {
			if(dbUser==null){
				response.getWriter().write("ok");
			}else{
				response.getWriter().write("error");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
}
