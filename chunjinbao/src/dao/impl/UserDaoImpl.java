package dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import dao.UserDao;
import entity.User;

public class UserDaoImpl implements UserDao {
	private SessionFactory sessionFactory;

	@Override
	public void register(User user) {
		// TODO Auto-generated method stub
		this.getCurrentSession().saveOrUpdate(user);
	}

	@Override
	public User findUserByTel(String tel) {
		// TODO Auto-generated method stub
		Criteria criteria = this.qryCurrentSession().createCriteria(User.class);
		criteria.add(Restrictions.eq("tel", tel));
		List<User> list=criteria.list();
		
		if(list.isEmpty())
			return null;
		else
			return list.get(0);
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
