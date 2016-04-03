package dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import dao.OrderDao;
import entity.Order;
import entity.Product;

public class OrderDaoImpl implements OrderDao {
	private SessionFactory sessionFactory;
	@Override
	public void insertOrder(Order order) {
		// TODO Auto-generated method stub
		this.getCurrentSession().saveOrUpdate(order);
	}
	@Override
	public List<Order> queryByUserId(Integer id) {
		// TODO Auto-generated method stub
		Criteria criteria = this.qryCurrentSession().createCriteria(Order.class);
		criteria.add(Restrictions.eq("userId", id));
		List<Order> list = criteria.list();
		return list;
	}


	@Override
	public Product getProductByOrder(Order order) {
		// TODO Auto-generated method stub
		Integer productId = order.getProductId();
		Criteria criteria = this.qryCurrentSession().createCriteria(Product.class);
		criteria.add(Restrictions.eq("productId", productId));
		List<Product> list = criteria.list();
		if (list.isEmpty())
			return null;
		else
			return list.get(0);
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
