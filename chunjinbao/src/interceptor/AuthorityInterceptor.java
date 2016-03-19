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
		//取出名为curUsrName的session属性
		String user=(String) session.getAttribute("curUsrTel");
		//如果没有登陆，返回重新登陆
		if(user!=null){
			session.setAttribute("requestURL", ServletActionContext.getRequest().getRequestURL().toString().split("/")[ServletActionContext.getRequest().getRequestURL().toString().split("/").length-1]);
			return invocation.invoke();
		}
		
			return Action.LOGIN;
	}
}