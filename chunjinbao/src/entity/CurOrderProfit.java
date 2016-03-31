package entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="CURORDERPROFIT",schema="chunjinbao")
public class CurOrderProfit {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	@Column(name="CALTIME",nullable=false,length=50)
	private String calTime;
	@Column(name="USERID",nullable=false)
	private Integer userId;
	@Column(name="GPROFIT",nullable=false)
	private Double gProfit;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCalTime() {
		return calTime;
	}
	public void setCalTime(String calTime) {
		this.calTime = calTime;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Double getgProfit() {
		return gProfit;
	}
	public void setgProfit(Double gProfit) {
		this.gProfit = gProfit;
	}
}
