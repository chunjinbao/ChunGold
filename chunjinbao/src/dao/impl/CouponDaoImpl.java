package dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import dao.CouponDao;
import entity.Coupon;
import entity.Product;

public class CouponDaoImpl implements CouponDao {
	private SessionFactory sessionFactory;
	@Override
	public List<Coupon> queryByUserId(Integer userid, String flag) {
		Criteria criteria = this.qryCurrentSession().createCriteria(Coupon.class);
		criteria.add(Restrictions.eq("userId", userid)).add(Restrictions.eq("isUse", flag));
		List<Coupon> list = criteria.list();
		return list;
	}
	public List<Coupon> queryByUserIdNum(Integer UserId){
		Criteria criteria = this.qryCurrentSession().createCriteria(Coupon.class);
		criteria.add(Restrictions.eq("userId", UserId));
		List<Coupon> list = criteria.list();
		return list;
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
