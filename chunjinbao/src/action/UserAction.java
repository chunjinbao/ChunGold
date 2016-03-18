package action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import service.UserService;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import entity.User;

public class UserAction extends ActionSupport{
	private User user;
	private UserService userService;
	
	public String userDetail(){
		return "userDetail";
	}
	public String share(){
		return "share";
	}
	
	public String moreMyInfoEditor(){
		HttpSession session = ServletActionContext.getRequest().getSession();
//		user = userService.findUserByTel((String) session.getAttribute("curUsrTel"));
		user = userService.findUserByTel("15012341231");
		
		return "userDetailEdit";
	}
	
	public String moreMyInfoEdit(){
		userService.update(user);
		
		return "userDetail";
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
