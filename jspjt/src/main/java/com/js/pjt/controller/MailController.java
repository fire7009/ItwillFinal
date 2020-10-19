package com.js.pjt.controller;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.js.pjt.service_serviceimp.TestService;
import com.js.pjt.vo.MailVO;

@Controller
@RequestMapping(value = "/mail")
public class MailController {
	private static final Logger logger = LoggerFactory.getLogger(MailController.class);
	@Inject
	TestService service;

	// 메일함 페이지
	@RequestMapping(value = "/mail-inbox", method = RequestMethod.GET)
	public void GetMaliList() {
		
		
	}

	// 보낸메일함 페이지
	@RequestMapping(value = "/send-inbox", method = RequestMethod.GET)
	public void GetSendMaliList() {
		
	}

	// 메일 보내기 페이지
	@RequestMapping(value = "/mail-sand", method = RequestMethod.GET)
	public void GetSendMali() {

	}
	//메일 보기
	@RequestMapping(value = "/viewMail", method = RequestMethod.GET)
	//@ResponseBody
	public void GetViewMali(@RequestParam int msgNo,Model model) {
		model.addAttribute("viewMail", service.viewMail(msgNo));
		System.out.println(service.viewMail(msgNo));
		service.mailReadCheck(msgNo);
	}

	// ajax 메일리스트 메소드
	@RequestMapping(value = "/getmail", method = RequestMethod.GET)
	public @ResponseBody List<HashMap<String, Object>> getMail() throws Exception {
		logger.info("Welcome getmail! The client locale is {}.");
		//List<HashMap<String, Object>> map = service.getMail();
		// System.out.println(map.get(0));
		// System.out.println(System.currentTimeMillis());

		return service.getMail();
	}

	// ajax 보낸리스트 메소드
	@RequestMapping(value = "/getSendMail", method = RequestMethod.GET)
	public @ResponseBody List<HashMap<String, Object>> getSendMail() throws Exception {
		logger.info("Welcome getSendMail The client locale is {}.");
		//List<HashMap<String, Object>> map = service.getSendMailList();
		// System.out.println(map.get(0));
		// System.out.println(System.currentTimeMillis());

		return service.getSendMailList();
	}

	// ajax 메일보내기 메소드
	@RequestMapping(value = "/sendMail", method = RequestMethod.POST)
	@ResponseBody
	public void sendMail(@ModelAttribute MailVO vo) throws Exception {
		logger.info("Welcome sendMail The client locale is {}.");
		service.sendMail(vo);

	}

	// ajax 보낸메일 카운트
	@RequestMapping(value = "/sendMailCount", method = RequestMethod.GET)
	@ResponseBody
	public HashMap<String, Object> sendMailCount() throws Exception {
		logger.info("Welcome sendMailCount The client locale is {}.");
		//HashMap<String, Object> map = service.getSendMailCount();
		//System.out.println(map.get("COUNT(*)"));
		
		return service.getSendMailCount();

	}

	// ajax 받은메일 카운트
	@RequestMapping(value = "/getMailCount", method = RequestMethod.GET)
	@ResponseBody
	public HashMap<String, Object> getMailCount() throws Exception {
		logger.info("Welcome sendMailCount The client locale is {}.");
		//HashMap<String, Object> map = service.getMailCount();
		return service.getMailCount();
	}
	
	@RequestMapping(value = "/detpMemberList", method = RequestMethod.GET)
	@ResponseBody
	public List<HashMap<String, Object>> getDetpMemberList(@RequestParam int deptNo) throws Exception {
		//System.out.println("deptNo="+deptNo);
		logger.info("Welcome detpMemberList The client locale is {}.");
		
		return service.deptMemberList(deptNo);
	}
}
