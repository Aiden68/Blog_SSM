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
		//��ȡ�����URL  
        String url = request.getRequestURI();  
        //URL:login.jsp�ǹ�����;���demo�ǳ���login.jsp�ǿ��Թ������ʵģ�������URL���������ؿ���  
        /*if(url.indexOf("login.action")>=0){  
            return true;  
        }  */
        //��ȡSession  
        HttpSession session = request.getSession();  
        String username = (String)session.getAttribute("username");  
        
        if(username != null){  
            return true;  
        }  
        //�����������ģ���ת����¼����  
        request.getRequestDispatcher("login").forward(request, response);  
        return false;  
	}

}
