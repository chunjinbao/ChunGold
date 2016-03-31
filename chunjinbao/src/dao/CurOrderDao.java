package dao;

import java.util.HashMap;
import java.util.List;

import entity.CurOrder;

public interface CurOrderDao {
	public void insertCurOrder(CurOrder curOrder);
	public List<CurOrder> findYesCurOrder(String yesterday);
	public void updateUserProfit(HashMap hashMap);
}
