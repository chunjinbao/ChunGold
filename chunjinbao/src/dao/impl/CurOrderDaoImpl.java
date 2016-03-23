package dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import dao.CurOrderDao;
import entity.CurOrder;

public class CurOrderDaoImpl implements CurOrderDao {
	private SessionFactory sessionFactory;
	
	@Override
	public void insertCurOrder(CurOrder curOrder) {
		this.getCurrentSession().saveOrUpdate(curOrder);
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
