package cn.andone.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class Interceptor implements HandlerInterceptor{

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		//获取请求的URL
		String url = request.getRequestURI().toLowerCase();
		//获取Session
		HttpSession session = request.getSession();
		String username = (String)session.getAttribute("username");

		if(url.indexOf("anonymous") != -1){
			session.setAttribute("username", "999");
//			System.out.println("anonymous user login");
			return true;
		}

		if(username != null && !username.equals("")){
			if(username.equals("999")){
				if(url.contains("edit") || url.contains("delete") || url.contains("add") || url.contains("update")){
					session.setAttribute("msg", "你没有权限，请先登录");
					return false;
				}
			}
			return true;
		}
		//不符合条件的，跳转到登录界面
		request.getRequestDispatcher("login").forward(request, response);
		return false;
	}

}
