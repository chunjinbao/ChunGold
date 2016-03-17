package action;

import java.util.List;

import service.ProductService;
import entity.Product;

public class NavAction {
	private Product product;
	private List<Product> productList;
	private Integer productNumber;
	private ProductService productService;
	public String insertProduct() throws Exception {
		productService.insertProduct(product);
		return "success";
	}
	public String index(){
		return "index";
	}

	public String products(){
		productList = productService.queryByProductName("2000");
		productNumber = productList.size();
		System.out.println(productNumber);
		return "products";
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public ProductService getProductService() {
		return productService;
	}
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}
	public List<Product> getProductList() {
		return productList;
	}
	public void setProductList(List<Product> productList) {
		this.productList = productList;
	}
	public Integer getProductNumber() {
		return productNumber;
	}
	public void setProductNumber(Integer productNumber) {
		this.productNumber = productNumber;
	}
	public String gold(){
		return "gold";
		
	}

	public String more(){
		return "more";
		
	}

}
