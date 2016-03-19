package Util;

public class InviteCode {
	public static String inviteCode(Integer priKey){
		//Ö÷¼ü
		
		String temp = Integer.toOctalString(priKey);
		
		String inviteCode ="";
		
		temp = temp + "9";
		int[] result1 = randomCommon(1,10,5);
		for(int i= 0; i<result1.length; i++){
			inviteCode = temp + result1[i];
		}
		return inviteCode;
		
	}
	public static int[] randomCommon(int min, int max, int n){  
	    if (n > (max - min + 1) || max < min) {  
	           return null;  
	       }  
	    int[] result = new int[n];  
	    int count = 0;  
	    while(count < n) {  
	        int num = (int) (Math.random() * (max - min)) + min;  
	        boolean flag = true;  
	        for (int j = 0; j < n; j++) {  
	            if(num == result[j]){  
	                flag = false;  
	                break;  
	            }  
	        }  
	        if(flag){  
	            result[count] = num;  
	            count++;  
	        }  
	    }  
	    return result;  
	}  

}
