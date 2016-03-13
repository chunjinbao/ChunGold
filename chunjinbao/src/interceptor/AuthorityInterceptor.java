package interceptor;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class AuthorityInterceptor extends AbstractInterceptor {
	//����Action��������ط���
	public String intercept(ActionInvocation invocation) throws Exception {
	
	HttpSession session = ServletActionContext.getRequest().getSession();
	//ȡ����ΪcurUsrName��session����
	String user=(String) session.getAttribute("curUsrTel");
	//���û�е�½���������µ�½
	if(user!=null){
		return invocation.invoke();
	}
	
		return Action.LOGIN;
	}
}