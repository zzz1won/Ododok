package com.odd.ododok.service;

import java.util.List;

import com.odd.ododok.dto.EventDTO;

public interface EventService {

	void eventSave(EventDTO event);

	public List<EventDTO> eventAll();

	EventDTO eventView(long e_number);

}
