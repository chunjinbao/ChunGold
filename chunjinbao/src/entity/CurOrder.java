package entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="CURORDER",schema="chunjinbao")
public class CurOrder {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer curOrderId;
	@Column(name="TRADENUM",nullable=true,length=50)
	private String tradeNum;
	@Column(name="TRADEAMOUNT",nullable=true,length=50)
	private String tradeAmount;
	@Column(name="TRADEDATE", nullable=true,length=50)
	private Date tradeDate;
	@Column(name="TRADETIME",nullable=true,length=50)
	private String tradeTime;
	@Column(name="PAYTYPE",nullable=true,length=50)
	private String payType;
	@Column(name="USERID",nullable=true,length=50)
	private Integer userId;
	@Column(name="PRODUCTID",nullable=true,length=50)
	private Integer productId;
	@Column(name="COUPONID",nullable=true,length=50)
	private Integer couponId;
	
	
	public Integer getCurOrderId() {
		return curOrderId;
	}
	public void setCurOrderId(Integer curOrderId) {
		this.curOrderId = curOrderId;
	}
	public String getTradeNum() {
		return tradeNum;
	}
	public void setTradeNum(String tradeNum) {
		this.tradeNum = tradeNum;
	}
	public String getTradeAmount() {
		return tradeAmount;
	}
	public void setTradeAmount(String tradeAmount) {
		this.tradeAmount = tradeAmount;
	}
	public Date getTradeDate() {
		return tradeDate;
	}
	public void setTradeDate(Date tradeDate) {
		this.tradeDate = tradeDate;
	}
	public String getTradeTime() {
		return tradeTime;
	}
	public void setTradeTime(String tradeTime) {
		this.tradeTime = tradeTime;
	}
	public String getPayType() {
		return payType;
	}
	public void setPayType(String payType) {
		this.payType = payType;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public Integer getCouponId() {
		return couponId;
	}
	public void setCouponId(Integer couponId) {
		this.couponId = couponId;
	}
	
}
