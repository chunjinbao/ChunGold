package action;

import service.UserService;

import com.opensymphony.xwork2.ActionSupport;

import entity.User;

public class BuyAction extends ActionSupport{
	private User user;
	private UserService userService;
}
