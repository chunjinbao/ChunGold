package timer;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import service.CurOrderService;

@Service
public class CalProfit {
	@Resource
	private CurOrderService curOrderService;
	
	public void updateUserProfit(){
		curOrderService.updateUserProfit();
	}

	public CurOrderService getCurOrderService() {
		return curOrderService;
	}

	public void setCurOrderService(CurOrderService curOrderService) {
		this.curOrderService = curOrderService;
	}
	
}
