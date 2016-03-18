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
	public Product queryByProductId(Integer id) {
		// TODO Auto-generated method stub
		System.out.println("Here: ProductServiceImpl");
		return productDao.queryByProductId(id);
	}
	@Override
	public List<Product> queryByProductType(Integer productType) {
		// TODO Auto-generated method stub
		return productDao.queryByProductType(productType);
	}
	public ProductDao getProductDao() {
		return productDao;
	}
	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}
	
}
