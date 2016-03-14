package action;

import java.io.IOException;

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
	
	public String register(){
		if(user==null){
			return Action.LOGIN;
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
			
			
			session.setAttribute("curUsrTel", dbUser.getTel());
			
			session.setAttribute("userName", dbUser.getUserName());
			
			
		}
		return Action.SUCCESS;
	}
	public void logout(){
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.removeAttribute("curUsrTel");
		
		session.removeAttribute("userName");
		
		HttpServletResponse response = ServletActionContext.getResponse(); 

		response.setContentType("text/plain;charset=UTF-8");
		
		try {
			response.getWriter().write("ok");
		} catch (IOException e) {
			// TODO Auto-generated catch block
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
