package action;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import service.CouponService;
import service.ProductService;
import entity.Coupon;
import entity.Product;

public class NavAction {
	private Product product;
	private List<Product> productListHuo;
	private List<Product> productListDing;
	private Integer productNumberHuo;
	private Integer productNumberDing;
	private ProductService productService;
	private CouponService couponService;
	private List<Coupon> coupon;
	private Integer couponNum;
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
		HttpSession session = ServletActionContext.getRequest().getSession();
		Integer userId = (Integer) session.getAttribute("userId");
		couponNum = 0;
		if(userId != null){
			//System.out.println(userId);
			coupon = couponService.queryByUserIdNum(userId);
			couponNum = coupon.size();
		}		
		return "gold";
		
	}

	public CouponService getCouponService() {
		return couponService;
	}
	public void setCouponService(CouponService couponService) {
		this.couponService = couponService;
	}
	public List<Coupon> getCoupon() {
		return coupon;
	}
	public void setCoupon(List<Coupon> coupon) {
		this.coupon = coupon;
	}
	public Integer getCouponNum() {
		return couponNum;
	}
	public void setCouponNum(Integer couponNum) {
		this.couponNum = couponNum;
	}
	public String more(){
		return "more";
		
	}

}
