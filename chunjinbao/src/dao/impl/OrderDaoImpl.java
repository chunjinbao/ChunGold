package dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import dao.OrderDao;
import entity.Order;

public class OrderDaoImpl implements OrderDao {
	private SessionFactory sessionFactory;
	@Override
	public void insertOrder(Order order) {
		// TODO Auto-generated method stub
		this.getCurrentSession().saveOrUpdate(order);
	}
	
	
	private Session getCurrentSession() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession();	//Create, Delete, Update
	}
	public Session qryCurrentSession() {
		return sessionFactory.openSession();	//Read
	}
	
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}
