package action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import service.OrderService;
import Util.DingProfitSet;
import entity.Order;
import entity.Product;

public class DingProfitAction {
	private Order order;
	private List<Integer> productId;
	private List<Product> product;
	private OrderService orderService;
	private List<DingProfitSet> dpsList = new ArrayList();
	public String getDingProfit() {
		HttpSession session = ServletActionContext.getRequest().getSession();
		int userId = (Integer) session.getAttribute("userId");
		List<Order> list = orderService.queryByUserId(userId);
		Integer listsz = list.size();
		for (int i = 0; i < listsz; ++i) {
			Order odr = list.get(i);
			Product prd = orderService.getProductByOrder(odr);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
			long buyDate_l = odr.getTradeTime();
			Date buyDate = new Date(buyDate_l);
			Date now = new Date();
			String time = sdf.format(buyDate);
			Double profitPerDay = Double.parseDouble(prd.getProductProfit());
			Integer days = (int) ((now.getTime() - buyDate_l) / 1000 / 60 / 60 / 24);
			Double profit = profitPerDay * days;
			DingProfitSet dps = new DingProfitSet(prd.getProductName(), time, profit.toString());
			dpsList.add(dps);
		}
		return "dingprofit";
	}
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public List<Integer> getProductId() {
		return productId;
	}
	public void setProductId(List<Integer> productId) {
		this.productId = productId;
	}
	public List<Product> getProduct() {
		return product;
	}
	public void setProduct(List<Product> product) {
		this.product = product;
	}
	public OrderService getOrderService() {
		return orderService;
	}
	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}
	public List<DingProfitSet> getDpsList() {
		return dpsList;
	}
	public void setDpsList(List<DingProfitSet> dpsList) {
		this.dpsList = dpsList;
	}
}
