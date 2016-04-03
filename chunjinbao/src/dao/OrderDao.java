package dao;

import java.util.List;

import entity.Order;
import entity.Product;

public interface OrderDao {
	public void insertOrder(Order order);
	public List<Order> queryByUserId(Integer id);
	public Product getProductByOrder(Order order);
}
