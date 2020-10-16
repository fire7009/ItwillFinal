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
import com.js.pjt.vo.ScheduleVO;
import com.js.pjt.vo.TestVO;

@Controller
@RequestMapping(value = "/schedule")
public class ScheduleController {
	private static final Logger logger = LoggerFactory.getLogger(ScheduleController.class);
	@Inject
	TestService service;

	// 일정 페이지
	@RequestMapping(value = "/schedule", method = RequestMethod.GET)
	public void GetSchedule() {

	}

	// ajax일정 리스트 메소드
	@RequestMapping(value = "/myevent", method = RequestMethod.GET)
	public @ResponseBody List<HashMap<String, Object>> mtevent() throws Exception {
		logger.info("Welcome myevent! The client locale is {}.");
		List<HashMap<String, Object>> map = service.getList();
		//System.out.println(map.get(0));
		return map;
	}

	// ajax일정 추가 메소드
	@RequestMapping(value = "/addEvent", method = RequestMethod.GET)
	@ResponseBody
	public void addEvent(@ModelAttribute ScheduleVO vo) throws Exception {
		// System.out.println(vo.isAllDay());
		logger.info("Welcome addEvent The client locale is {}.");
		if (vo.isAllDay() == true) {
			vo.setAllday("true");
		} else if (vo.isAllDay() == false) {
			vo.setAllday("false");
		}
		service.addEvent(vo);

	}

	// ajax일정 수정 메소드
	@RequestMapping(value = "/editEvent", method = RequestMethod.GET)
	@ResponseBody
	public void editEvent(@ModelAttribute ScheduleVO vo) {
		logger.info("Welcome editEvent The client locale is {}.");
		System.out.println(vo.getTitle());

	}
}
