package dao.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import dao.UserDao;
import entity.User;

public class UserDaoImpl implements UserDao {
	private SessionFactory sessionFactory;

	@Override
	public void register(User user) {
		Date regTime = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");  
		user.setRegTime(dateFormat.format(regTime));
		this.getCurrentSession().saveOrUpdate(user);
	}

	@Override
	public User findUserByTel(String tel) {
		Criteria criteria = this.qryCurrentSession().createCriteria(User.class);
		criteria.add(Restrictions.eq("tel", tel));
		List<User> list=criteria.list();
		
		if(list.isEmpty())
			return null;
		else
			return list.get(0);
	}
	
	@Override
	public void updateUserDetail(User user) {
		Query query = this.getCurrentSession().createQuery("update User u set u.email = ?,u.userName = ?,u.sex = ?,u.birthday = ?,u.headPortrait = ? where u.userId = ?");  
		query.setParameter(0, user.getEmail());
		query.setParameter(1, user.getUserName());
		query.setParameter(2, user.getSex());
		query.setParameter(3, user.getBirthday());
		query.setParameter(4, user.getHeadPortrait());
		query.setParameter(5, user.getUserId());
	    query.executeUpdate();
	}
	
	@Override
	public Integer findShareId(String shareId) {
		System.out.println(shareId);
		Criteria criteria = this.qryCurrentSession().createCriteria(User.class);
		criteria.add(Restrictions.eq("shareId", shareId));
		List<User> list=criteria.list();
		
		return list.size();
	}
	
	@Override
	public void update(User user){
		this.getCurrentSession().update(user);
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public Session getCurrentSession() {
        return sessionFactory.getCurrentSession();// 增删改使用的session
    }

    public Session qryCurrentSession() {
        return sessionFactory.openSession();// 查询使用的session
    }

}
