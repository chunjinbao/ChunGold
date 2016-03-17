package action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import service.OrderService;
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
		HttpServletRequest request = ServletActionContext.getRequest();
		System.out.println("Here.");
		System.out.println(request.getParameter("productId"));
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
