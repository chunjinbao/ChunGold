package service;

import java.util.List;

import entity.Coupon;

public interface CouponService {
	public List<Coupon> queryByUserId(Integer UserId, String flag);
	public List<Coupon> queryByUserIdNum(Integer UserId);
	
}
