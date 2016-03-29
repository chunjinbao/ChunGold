package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import service.CurOrderService;
import service.ProductService;
import Util.GetGoldPrice;
import entity.CurOrder;
import entity.Product;

public class CurOrderAction {
	private CurOrder curOrder;
	private Product product;
	private CurOrderService curOrderService;
	private ProductService productService;
	public String startOrder() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		product = productService.queryByProductId(Integer.parseInt(request.getParameter("productId")));
		return "toCurOrder";
	}
	
	public String insertOrder() throws Exception {
		double goldPrice = Double.parseDouble(GetGoldPrice.getRequest1());
		if (curOrder.getTradeNum() == null) {
			curOrder.setTradeNum(Double.parseDouble(curOrder.getTradeAmount()) / goldPrice);
		}
		
		else if (curOrder.getTradeAmount() == null) {
			curOrder.setTradeAmount((curOrder.getTradeNum() * goldPrice) + "");
		}
		
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = ServletActionContext.getRequest().getSession();
		
		curOrder.setUserId((Integer) session.getAttribute("userId"));
		curOrder.setProductId(Integer.parseInt(request.getParameter("productId")));
		curOrderService.insertCurOrder(curOrder);
		
		return null;
	}

	public CurOrder getCurOrder() {
		return curOrder;
	}

	public void setCurOrder(CurOrder curOrder) {
		this.curOrder = curOrder;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public CurOrderService getCurOrderService() {
		return curOrderService;
	}

	public void setCurOrderService(CurOrderService curOrderService) {
		this.curOrderService = curOrderService;
	}

	public ProductService getProductService() {
		return productService;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}
}
