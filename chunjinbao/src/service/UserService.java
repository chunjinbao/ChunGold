package service;

import entity.User;

public interface UserService {
	public void register(User user);
	public User findUserByTel(String tel);
	public void updateUserDetail(User user);
	public void update(User user);
}
