package service.impl;

import service.UserService;
import dao.UserDao;
import entity.User;

public class UserServiceImpl implements UserService {
	private UserDao userDao;
	@Override
	public void register(User user) {
			this.userDao.register(user);
	}

	@Override
	public User findUserByTel(String tel) {
		return this.userDao.findUserByTel(tel);
	}
	
	@Override
	public void update(User user) {
		this.userDao.update(user);
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
}
