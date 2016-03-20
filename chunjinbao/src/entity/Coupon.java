package entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="COUPON",schema="chunjinbao")
public class Coupon {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer couponId;

	//  ”√∑∂Œß
	@Column(name="USABLE",nullable=true,length=50)
	private String usable;

	@Column(name="ISUSE",nullable=true,length=50)
	private String isUse;
	
	@Column(name="OBTAINTIME",nullable=true,length=50)
	private String obtainTime;
	
	@Column(name="DIRETIME",nullable=true,length=50)
	private String direTime;

	@Column(name="USERID",nullable=true,length=50)
	private Integer userId;

	@Column(name="MONEY",nullable=true,length=50)
	private String money;


	public String getCmoney() {
		return money;
	}
	public void setCmoney(String cmoney) {
		this.money = cmoney;
	}
	public String getObtainTime() {
		return obtainTime;
	}
	public void setObtainTime(String obtainTime) {
		this.obtainTime = obtainTime;
	}
	public String getDireTime() {
		return direTime;
	}
	public void setDireTime(String direTime) {
		this.direTime = direTime;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	public Integer getCouponId() {
		return couponId;
	}
	public void setCouponId(Integer couponId) {
		this.couponId = couponId;
	}

	public String getUsable() {
		return usable;
	}
	public void setUsable(String usable) {
		this.usable = usable;
	}

	public String getIsUse() {
		return isUse;
	}
	public void setIsUse(String isUse) {
		this.isUse = isUse;
	}

	
	
}
