package blog.naver.blusangil7.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import blog.naver.bluesangil7.library.service.Library;

public class LoginCheckInterceptor extends HandlerInterceptorAdapter {
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception{
		HttpSession session = request.getSession(false);
		System.out.println("interceptor session : " + session);
		
		if(session == null){
			response.sendRedirect(request.getContextPath() + "/library/login");
			return false;
		}
		
		Library library = (Library) session.getAttribute("library");
		System.out.println("interceptor library : " + library);
		if(library==null){
			response.sendRedirect(request.getContextPath()+"/library/login");
			return false;
		}
		
		return true;
	}
}
