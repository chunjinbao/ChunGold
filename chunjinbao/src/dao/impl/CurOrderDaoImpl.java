package dao.impl;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import dao.CurOrderDao;
import entity.CurOrder;
import entity.CurOrderProfit;

public class CurOrderDaoImpl implements CurOrderDao {
	private SessionFactory sessionFactory;
	
	@Override
	public void insertCurOrder(CurOrder curOrder) {
		this.getCurrentSession().saveOrUpdate(curOrder);
	}
	
	@Override
	public List<CurOrder> findYesCurOrder(String yesterday) {
		Criteria criteria = this.qryCurrentSession().createCriteria(CurOrder.class);
		criteria.add(Restrictions.like("tradeTime", yesterday));
		List<CurOrder> list=criteria.list();
		return list;
	}
	
	@Override
	public void updateUserProfit(HashMap hashMap) {
		for(Iterator<CurOrderProfit>  it=hashMap.values().iterator();it.hasNext();){
			CurOrderProfit curOrderProfit = it.next();
			this.getCurrentSession().save(curOrderProfit);
		}
	}

	private Session getCurrentSession() {
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
