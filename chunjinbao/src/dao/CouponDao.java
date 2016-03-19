package dao;

import java.util.List;

import entity.Coupon;

public interface CouponDao {
	public List<Coupon> queryByUserId(Integer UserId, String flag);
	public List<Coupon> queryByUserIdNum(Integer UserId);

}
