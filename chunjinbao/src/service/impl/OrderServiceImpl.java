package service.impl;

import java.util.List;

import service.OrderService;
import dao.OrderDao;
import entity.Order;
import entity.Product;

public class OrderServiceImpl implements OrderService {
	private OrderDao orderDao;
	@Override
	public void insertOrder(Order order) {
		// TODO Auto-generated method stub
		this.orderDao.insertOrder(order);
	}
	@Override
	public List<Order> queryByUserId(Integer id) {
		// TODO Auto-generated method stub
		return orderDao.queryByUserId(id);
	}
	@Override
	public Product getProductByOrder(Order order) {
		// TODO Auto-generated method stub
		return orderDao.getProductByOrder(order);
	}
	public OrderDao getOrderDao() {
		return orderDao;
	}
	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}


}
