package entity;

import java.sql.Time;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ORDER",schema="chunjinbao")
public class Order {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer orderId;
	@Column(name="TRADENUM",nullable=true,length=50)
	private String tradeNum;
	@Column(name="TRADEAMOUNT",nullable=true,length=50)
	private String tradeAmount;
	@Column(name="TRADETIME",nullable=true,length=50)
	private Time tradeTime;
	@Column(name="PAYTYPE",nullable=true,length=50)
	private String payType;
	@Column(name="USERID",nullable=true,length=50)
	private Integer userId;
	@Column(name="PRODUCTID",nullable=true,length=50)
	private Integer productId;
	@Column(name="COUPONID",nullable=true,length=50)
	private Integer couponId;
	
}
