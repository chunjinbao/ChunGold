package service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;

import service.CurOrderService;
import dao.CurOrderDao;
import entity.CurOrder;

public class CurOrderServiceImpl implements CurOrderService {
	private CurOrderDao curOrderDao;
	
	@Override
	public void insertCurOrder(CurOrder curOrder) {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		curOrder.setTradeTime(simpleDateFormat.format(new Date()));
		this.curOrderDao.insertCurOrder(curOrder);
	}
	
	public CurOrderDao getCurOrderDao() {
		return curOrderDao;
	}
	public void setCurOrderDao(CurOrderDao curOrderDao) {
		this.curOrderDao = curOrderDao;
	}

}
