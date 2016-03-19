package interceptor;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class AuthorityInterceptor extends MethodFilterInterceptor {

	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession();
		//ȡ����ΪcurUsrName��session����
		String user=(String) session.getAttribute("curUsrTel");
		//���û�е�½���������µ�½
		if(user!=null){
			session.setAttribute("requestURL", ServletActionContext.getRequest().getRequestURL().toString().split("/")[ServletActionContext.getRequest().getRequestURL().toString().split("/").length-1]);
			return invocation.invoke();
		}
		
			return Action.LOGIN;
	}
}