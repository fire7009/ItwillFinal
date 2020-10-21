package com.js.pjt.controller;



import java.util.List;
import java.util.Locale;


import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.stereotype.Controller;
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
	public String list(Locale locale, Model model) throws Exception {
		logger.info("Welcome delivery! The client locale is {}.", locale);
		List<DeliveryVO> vo=service.selectListDelivery();
		model.addAttribute("deliveryList", vo);
		return "unsong/unsong";
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String insert() {
		return "unsong/unsong_insert";
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(@ModelAttribute DeliveryVO vo, Model model) {
		try {
			service.insertDelivery(vo);
		} catch (Exception e) {
			model.addAttribute("message", "이미 사용중인 학번을 입력 하였습니다.");
			return "unsong/unsong_insert";
		}
		return "redirect:/unsong";
	}

	@RequestMapping(value = "/delete/{dlvrNo}",method = RequestMethod.GET)
	public String delete(@PathVariable int dlvrNo) throws Exception {
		service.deleteDelivery(dlvrNo);
		return "redirect:/unsong";
	}
	
	@RequestMapping(value = "/unsong_update/{num}",method = RequestMethod.GET)
	public String select(@PathVariable int num) throws Exception {
		return "unsong/unsong_update";
	}
	
	@RequestMapping(value = "/update",method = RequestMethod.POST)
	public String update(@ModelAttribute DeliveryVO vo, Model model) {
		try {
			service.updateDelivery(vo);
		} catch (Exception e) {
			model.addAttribute("message", "이미 사용중인 학번을 입력 하였습니다.");
			return "unsong/unsong_insert";
		}
		return "redirect:/unsong";
	}
	
}
