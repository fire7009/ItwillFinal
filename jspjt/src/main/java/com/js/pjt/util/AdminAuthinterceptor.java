package com.js.pjt.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.js.pjt.vo.EmployeeVO;

public class AdminAuthinterceptor extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session=request.getSession();
		EmployeeVO loginUserInfo=(EmployeeVO)session.getAttribute("loginUserInfo");
		if(loginUserInfo==null) {
			throw new Exception("login");
		} else if(loginUserInfo.getPosDvcd()<20 || loginUserInfo.getDeptNo()!=10) {
			throw new Exception("admin");			
		}
		return true;
	}
}
