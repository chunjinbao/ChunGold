package dao;

import java.util.List;

import entity.User;

public interface UserDao {
	public void register(User user);
	public User findUserByTel(String tel);
	public void updateUserDetail(User user);
	public void update(User user);
	public Integer findShareId(String shareId);
	public List<User> findUserAward(String tel);
}
