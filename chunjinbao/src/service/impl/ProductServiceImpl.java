package service.impl;

import java.util.List;

import service.ProductService;
import dao.ProductDao;
import entity.Product;

public class ProductServiceImpl implements ProductService {
	private ProductDao productDao;
	@Override
	public void insertProduct(Product product) {
		// TODO Auto-generated method stub
		this.productDao.insertProduct(product);
	}
	@Override
	public List<Product> queryByProductName(String name) {
		// TODO Auto-generated method stub
		return productDao.queryByProductName(name);
	}
	public ProductDao getProductDao() {
		return productDao;
	}
	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}
	
}
