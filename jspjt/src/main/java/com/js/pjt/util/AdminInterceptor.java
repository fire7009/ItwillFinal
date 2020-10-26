package com.js.pjt.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.js.pjt.vo.EmployeeVO;

public class AdminInterceptor extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session=request.getSession();
		EmployeeVO employee=(EmployeeVO)session.getAttribute("loginUserInfo");
		if(employee==null) {
			throw new Exception("login"); 
		} else if(employee.getPosDvcd()<30) {
			throw new Exception("posAdmin");
		}
		return super.preHandle(request, response, handler);
	}
}
