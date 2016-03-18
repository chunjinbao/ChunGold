package action;

import java.util.List;

import service.ProductService;
import entity.Product;

public class NavAction {
	private Product product;
	private List<Product> productListHuo;
	private List<Product> productListDing;
	private Integer productNumberHuo;
	private Integer productNumberDing;
	private ProductService productService;
	public String insertProduct() throws Exception {
		productService.insertProduct(product);
		return "success";
	}
	public String index(){
		return "index";
	}

	public String products(){
		productListHuo = productService.queryByProductType(0);
		productNumberHuo = productListHuo.size();

		productListDing = productService.queryByProductType(1);
		productNumberDing = productListDing.size();
		return "products";
	}

	
	
	
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public List<Product> getProductListHuo() {
		return productListHuo;
	}
	public void setProductListHuo(List<Product> productListHuo) {
		this.productListHuo = productListHuo;
	}
	public List<Product> getProductListDing() {
		return productListDing;
	}
	public void setProductListDing(List<Product> productListDing) {
		this.productListDing = productListDing;
	}
	public Integer getProductNumberHuo() {
		return productNumberHuo;
	}
	public void setProductNumberHuo(Integer productNumberHuo) {
		this.productNumberHuo = productNumberHuo;
	}
	public Integer getProductNumberDing() {
		return productNumberDing;
	}
	public void setProductNumberDing(Integer productNumberDing) {
		this.productNumberDing = productNumberDing;
	}
	public ProductService getProductService() {
		return productService;
	}
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}
	public String gold(){
		return "gold";
		
	}

	public String more(){
		return "more";
		
	}

}
