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
	
	public String register(){
		userService.register(user);
		
		return Action.SUCCESS;
	}
	
	public String checkLogin(){
		User dbUser = userService.findUserByTel(user.getTel());
		if(dbUser==null || !user.getPassword().equals(dbUser.getPassword())){
			return Action.ERROR;
		}else{
			HttpSession session = ServletActionContext.getRequest().getSession();
			//如果有登录信息除去
			if(session.getAttribute("curUsrName") != null) {
				session.removeAttribute("curUsrName");
			}
			//加入新的登录信息
			session.setAttribute("curUsrName", dbUser.getRelName());
			
		}
		
		return Action.LOGIN;
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
