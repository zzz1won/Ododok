package com.odd.ododok.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.odd.ododok.dto.EventDTO;
import com.odd.ododok.repository.EventRepository;

@Service
public class EventServiceImpl implements EventService {

	@Autowired
	private EventRepository er;

	@Override
	public void eventSave(EventDTO event) {
		System.out.println("EventService.eventSave");
		er.eventSave(event);
		
	}

	@Override
	public List<EventDTO> eventAll() {
		/* List<EventDTO> eventList = er.eventAll(); */
		System.out.println("EventService.eventAll");
		return er.eventAll();
	}

	@Override
	public EventDTO eventView(long e_number) {
		System.out.println("EventService.eventView");
		EventDTO event = er.eventView(e_number); 
		return event;
	}
	
}
