package dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import dao.ProductDao;
import entity.Product;

public class ProductDaoImpl implements ProductDao {
	private SessionFactory sessionFactory;

	@Override
	public void insertProduct(Product product) {
		// TODO Auto-generated method stub
		this.getCurrentSession().saveOrUpdate(product);
	}

	@Override
	public Product queryByProductId(Integer id) {
		// TODO Auto-generated method stub
		Criteria criteria = this.qryCurrentSession().createCriteria(Product.class);
		criteria.add(Restrictions.eq("productId", id));
		List<Product> list = criteria.list();
		if (list.isEmpty())
			return null;
		else
			return list.get(0);
	}
	
	@Override
	public List<Product> queryByProductType(Integer productType) {
		// TODO Auto-generated method stub
		Criteria criteria = this.qryCurrentSession().createCriteria(Product.class);
		criteria.add(Restrictions.eq("productType", productType));
		List<Product> list = criteria.list();
		return list;
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
