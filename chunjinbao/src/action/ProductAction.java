package action;

import java.util.List;

import service.ProductService;
import entity.Product;

public class ProductAction {
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
	public String selectProduct() throws Exception {
//		productNumber = productService.queryByProductName(product.getProductName(), productList);
		productListHuo = productService.queryByProductType(0);
		productNumberHuo = productListHuo.size();
		productListDing = productService.queryByProductType(0);
		productNumberDing = productListDing.size();
		return "product_list";
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
	
	
}
