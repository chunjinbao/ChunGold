package Util;

public class DingProfitSet {
	private String productName;
	private String buyTime;
	private String profit;
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getBuyTime() {
		return buyTime;
	}
	public void setBuyTime(String buyTime) {
		this.buyTime = buyTime;
	}
	public String getProfit() {
		return profit;
	}
	public void setProfit(String profit) {
		this.profit = profit;
	}
	public DingProfitSet(String productName, String buyTime, String profit) {
		super();
		this.productName = productName;
		this.buyTime = buyTime;
		this.profit = profit;
	}
}
