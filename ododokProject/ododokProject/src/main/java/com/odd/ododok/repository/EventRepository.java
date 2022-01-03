package com.odd.ododok.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.odd.ododok.dto.EventDTO;

@Repository
public class EventRepository {

	@Autowired
	private SqlSessionTemplate sql;
	

	public void eventSave(EventDTO event) {
		System.out.println("EvnetRepository.eventSave");
		sql.insert("Event.save", event);		
	}
	
	public List<EventDTO> eventAll()	{
		System.out.println("EventRepository.eventAll");
		return sql.selectList("Event.eventAll");
	}

	public EventDTO eventView(long e_number) {
		System.out.println("EventRepository.eventView");
		return sql.selectOne("Event.eventView",e_number);
	}
	
}
