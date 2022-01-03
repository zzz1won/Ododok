package com.odd.ododok.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.odd.ododok.dto.EventDTO;
import com.odd.ododok.service.EventService;

@Controller

@RequestMapping (value="/library/*")
public class EventController {
	
	@Autowired
	private EventService es;
	
	//1222-03-얘를 먼저 하자...
	@RequestMapping(value="eventInsert", method =RequestMethod.GET)
	public String eventInsert () {
		System.out.println("EventController.eventInsert-Form");
		return "library/eventInsert";
	}

	
	// 1222-04-행사추가 처리
	@RequestMapping(value="eventInsert", method=RequestMethod.POST)
	public String eventSave(@ModelAttribute EventDTO event)	{
		System.out.println("EvenetController.eventSave");
		es.eventSave(event);
		return "redirect:/library/eventAll";
		
	}
	
	
	// 1222-05-행사출력
	@RequestMapping(value="eventAll", method=RequestMethod.GET)
	public String eventAll(Model model) {
		System.out.println("EventController.eventAll");
		List<EventDTO> eventList = es.eventAll();
		model.addAttribute("eventList", eventList);
		return "library/eventAll";
	}
	
	// 1222-06-행사 상세조회
	@RequestMapping(value="eventView", method=RequestMethod.GET)
	public String eventView(@RequestParam("e_number") long e_number, Model model)	{
		System.out.println("EventController.eventView");
		EventDTO event = es.eventView(e_number);
		model.addAttribute("event", event);
		return "library/eventView";
	}
	
	
	// 1230-추가나 해보는 자동완성기능
	@RequestMapping(value="/json", method = RequestMethod.GET, produces="text/plain;charset=UTF-8")
	@ResponseBody
	public String json(Locale locale, Model model) {
		String[] array = {"엽기떡볶이", "신전떡볶이", "걸작떡볶이", "신당동떡볶이"};
		Gson gson = new Gson();

	    return gson.toJson(array);
	
	}
	
}
