package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import service.OrderService;
import Util.GetGoldPrice;
import entity.Order;

public class OrderAction {
	private Order order;
	private OrderService orderService;
	public String startOrder() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
//		System.out.println(request.getParameter("productId"));
//		request.getParameter("productId");
//		orderService.insertOrder(order);
		return "tobuycurrent";
	}
	
	public String insertOrder() throws Exception {
		double goldPrice = Double.parseDouble(GetGoldPrice.getRequest1());
		if (order.getTradeNum() == null) {
			order.setTradeNum((Double.parseDouble(order.getTradeAmount()) / goldPrice) + "");
		}
		
		else if (order.getTradeAmount() == null) {
			order.setTradeAmount((Double.parseDouble(order.getTradeNum()) * goldPrice) + "");
		}
		
		
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = ServletActionContext.getRequest().getSession();
		
		order.setUserId((Integer) session.getAttribute("userId"));
		order.setProductId(Integer.parseInt(request.getParameter("productId")));
		orderService.insertOrder(order);
		
		
		
		return null;
		
	}
	
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public OrderService getOrderService() {
		return orderService;
	}
	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}
	
}
