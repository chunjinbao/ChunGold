package dao;

import java.util.List;

import entity.Product;

public interface ProductDao {
	public void insertProduct(Product product);
	public List<Product> queryByProductType(Integer productType);
	public Product queryByProductId(Integer id);
}
