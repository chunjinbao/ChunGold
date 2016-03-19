package service.impl;

import java.util.List;

import dao.CouponDao;
import dao.ProductDao;
import entity.Coupon;
import service.CouponService;

public class CouponServiceImpl implements CouponService {
	private CouponDao couponDao;
	public CouponDao getCouponDao() {
		return couponDao;
	}
	public void setCouponDao(CouponDao couponDao) {
		this.couponDao = couponDao;
	}
	@Override
	public List<Coupon> queryByUserId(Integer UserId, String flag) {
		// TODO Auto-generated method stub
		return couponDao.queryByUserId(UserId, flag);
	}
	public List<Coupon> queryByUserIdNum(Integer UserId){
		return couponDao.queryByUserIdNum(UserId);
	}

}
