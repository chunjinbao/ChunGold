package entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="PRODUCT",schema="chunjinbao")
public class Product {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer productId;
	@Column(name="PRODUCTNAME",nullable=true,length=50)
	private String productName;
	@Column(name="PRODUCTTYPE",nullable=true,length=50)
	private String productType;
	@Column(name="PRODUCTPROFIT",nullable=true,length=50)
	private String productProfit;
	@Column(name="MINMONEY",nullable=true,length=50)
	private String minMoney;
	@Column(name="INVESTPERIOD",nullable=true,length=50)
	private String investPeriod;
	@Column(name="TAX",nullable=true,length=50)
	private String tax;
	@Column(name="PRODUCTDETAIL",nullable=true,length=50)
	private String productDetail;
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductType() {
		return productType;
	}
	public void setProductType(String productType) {
		this.productType = productType;
	}
	public String getProductProfit() {
		return productProfit;
	}
	public void setProductProfit(String productProfit) {
		this.productProfit = productProfit;
	}
	public String getMinMoney() {
		return minMoney;
	}
	public void setMinMoney(String minMoney) {
		this.minMoney = minMoney;
	}
	public String getProductDetail() {
		return productDetail;
	}
	public void setProductDetail(String productDetail) {
		this.productDetail = productDetail;
	}
	public String getInvestPeriod() {
		return investPeriod;
	}
	public void setInvestPeriod(String investPeriod) {
		this.investPeriod = investPeriod;
	}
	public String getTax() {
		return tax;
	}
	public void setTax(String tax) {
		this.tax = tax;
	}
	public Product() {
		super();
		this.productId = 105;
		this.productName = "L";
		this.productType = "L";
		this.productProfit = "L";
		this.minMoney = "L";
		this.investPeriod = "L";
		this.tax = "L";
		this.productDetail = "L";
	}
	
}
