package service.impl;

import service.OrderService;
import dao.OrderDao;
import entity.Order;

public class OrderServiceImpl implements OrderService {
	private OrderDao orderDao;
	@Override
	public void insertOrder(Order order) {
		// TODO Auto-generated method stub
		this.orderDao.insertOrder(order);
	}
	public OrderDao getOrderDao() {
		return orderDao;
	}
	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}


}
