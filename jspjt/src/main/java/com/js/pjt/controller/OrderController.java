package com.js.pjt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.js.pjt.service_serviceimp.OrderService;
import com.js.pjt.vo.OrderVO;

@Controller
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add() {
		return "order/order_add";
	}
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(@ModelAttribute OrderVO order, Model model) {
		try {
			orderService.addOrder(order);			
		} catch (Exception e) {
			model.addAttribute("message", "상품정보를 입력해주세요");
			return "order/order_add";
		}
		return "order/order";
	}
	
	@RequestMapping(value="/orderList", method = RequestMethod.GET)
	public String display(Model model) {
		model.addAttribute("orderList", orderService.selectOrderList()); 
		return "order/order";
	}
}
