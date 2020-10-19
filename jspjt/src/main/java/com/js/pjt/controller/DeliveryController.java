package com.js.pjt.controller;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.js.pjt.service_serviceimp.DeliveryService;
import com.js.pjt.vo.DeliveryVO;



@Controller
public class DeliveryController {
	private static final Logger logger = LoggerFactory.getLogger(DeliveryController.class);
	
	@Inject
	DeliveryService service;
	
	
	@RequestMapping(value = "/unsong", method = RequestMethod.GET)
	public String List(Locale locale, Model model) throws Exception {
		logger.info("Welcome delivery! The client locale is {}.", locale);
		
		List<DeliveryVO> vo;
		vo = service.selectListDelivery();
		model.addAttribute("deliveryList", vo);
		
		return "unsong/unsong";
	}
	@RequestMapping(value = "/unsong_delete",method = RequestMethod.GET)
	public String delete(@RequestParam("dlvr_no") int dlvr_no) throws Exception {
		service.deleteDelivery(dlvr_no);
		return "redirect:/unsong";
	}

	
	@RequestMapping(value = "/unsong_insert", method = RequestMethod.GET)
	public String insert(@ModelAttribute DeliveryVO delivery, Model model) {
		try {
			logger.info("db값 저장.");
			service.insertDelivery(delivery);
		} catch (Exception e) {
			model.addAttribute("message", "테이블에 이미 사용중인 값을 입력 하였습니다.");
			return "unsong/unsong_insert";
		}
		return "redirect:/unsong";
	}
	
	
	
}
