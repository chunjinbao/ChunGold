package Util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class GetTime {
	public static String nowTime(){
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		return simpleDateFormat.format(new Date());
	}
	
	public static String nowDate(){
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		
		return simpleDateFormat.format(new Date());
	}
	
	public static String yesterDate(){
		Calendar   cal   =   Calendar.getInstance();
		cal.add(Calendar.DATE,   -1);
		
		return new SimpleDateFormat( "yyyy-MM-dd").format(cal.getTime());
	}
}
