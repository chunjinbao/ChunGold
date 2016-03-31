package service.impl;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import Util.GetTime;
import service.CurOrderService;
import dao.CurOrderDao;
import entity.CurOrder;
import entity.CurOrderProfit;

public class CurOrderServiceImpl implements CurOrderService {
	private CurOrderDao curOrderDao;
	
	@Override
	public void insertCurOrder(CurOrder curOrder) {
		curOrder.setTradeTime(GetTime.nowTime());
		this.curOrderDao.insertCurOrder(curOrder);
	}
	
	@Override
	public void updateUserProfit() {
		String yesterday = GetTime.yesterDate();
		yesterday+="%";
		
		HashMap<String, CurOrderProfit> hashMap = new HashMap<String, CurOrderProfit>();
		
		List<CurOrder> list = curOrderDao.findYesCurOrder(yesterday);
		for(Iterator<CurOrder>  it=list.iterator();it.hasNext();){
			CurOrder curOrder=it.next();
			CurOrderProfit curOrderProfit =null;
			
			if(hashMap.containsKey(curOrder.getUserId())){
				curOrderProfit = hashMap.get(curOrder.getUserId());
			}else{
				curOrderProfit = new CurOrderProfit();
				curOrderProfit.setgProfit(0.0);
				curOrderProfit.setUserId(curOrder.getUserId());
			}
			
			curOrderProfit.setCalTime(GetTime.nowTime());
			curOrderProfit.setgProfit(curOrder.getTradeNum()+curOrderProfit.getgProfit());
			
			hashMap.put("userId", curOrderProfit);
        }
		curOrderDao.updateUserProfit(hashMap);
	}
	
	public CurOrderDao getCurOrderDao() {
		return curOrderDao;
	}
	public void setCurOrderDao(CurOrderDao curOrderDao) {
		this.curOrderDao = curOrderDao;
	}

}
