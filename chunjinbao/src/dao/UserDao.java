package dao;

import entity.User;

public interface UserDao {
	public void register(User user);
	public User findUserByTel(String tel);
	public void updateUserDetail(User user);
	public void update(User user);
}
