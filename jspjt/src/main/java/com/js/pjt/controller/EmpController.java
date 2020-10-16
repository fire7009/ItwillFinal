package com.js.pjt.controller;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.js.pjt.service_serviceimp.TestService;
import com.js.pjt.vo.MailVO;
import com.js.pjt.vo.TestVO;

@Controller
@RequestMapping(value = "/emp")
public class EmpController {
	private static final Logger logger = LoggerFactory.getLogger(EmpController.class);

	@Inject
	TestService service;

	// 사원 게시판 페이지
	@RequestMapping(value = "/emp_board", method = RequestMethod.GET)
	public void GetEmpBoard() {

	}


	// 로그인 페이지
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void GetsignIn() {

	}

	// 사원등록 페이지
	@RequestMapping(value = "/pages-sign-up", method = RequestMethod.GET)
	public void GetRegMember() {

	}

	

	
}
