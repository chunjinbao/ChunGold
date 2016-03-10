package service.impl;

import service.UserService;
import dao.UserDao;
import entity.User;

public class UserServiceImpl implements UserService {
	private UserDao userDao;
	@Override
	public void register(User user) {
		// TODO Auto-generated method stub
		this.userDao.register(user);
	}

	@Override
	public User findUserByTel(String tel) {
		// TODO Auto-generated method stub
		return this.userDao.findUserByTel(tel);
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
}
