package action;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import service.CouponService;
import entity.Coupon;

public class CouponAction {
	
	private List<Coupon> couponUse;
	private List<Coupon> couponUnuse;
	private Integer couponUseNum;
	private Integer couponUnuseNum;
	private CouponService couponService;
	public String showCoupon(){
		//用过的优惠券标注为1
		//没有用过的优惠券标注为0
		HttpSession session = ServletActionContext.getRequest().getSession();
		Integer userId = (Integer) session.getAttribute("userId");
		//System.out.println(userId);
		couponUse = couponService.queryByUserId(userId,"1");
		//System.out.println(couponUse);
		couponUseNum = couponUse.size();
		//System.out.println(couponUseNum);
		couponUnuse = couponService.queryByUserId(userId,"0");
		couponUnuseNum = couponUnuse.size();
		return "showCoupon";
	 }
	public List<Coupon> getCouponUse() {
		return couponUse;
	}
	public void setCouponUse(List<Coupon> couponUse) {
		this.couponUse = couponUse;
	}
	public List<Coupon> getCouponUnuse() {
		return couponUnuse;
	}
	public void setCouponUnuse(List<Coupon> couponUnuse) {
		this.couponUnuse = couponUnuse;
	}
	public Integer getCouponUseNum() {
		return couponUseNum;
	}
	public void setCouponUseNum(Integer couponUseNum) {
		this.couponUseNum = couponUseNum;
	}
	public Integer getCouponUnuseNum() {
		return couponUnuseNum;
	}
	public void setCouponUnuseNum(Integer couponUnuseNum) {
		this.couponUnuseNum = couponUnuseNum;
	}
	public CouponService getCouponService() {
		return couponService;
	}
	public void setCouponService(CouponService couponService) {
		this.couponService = couponService;
	}

}
