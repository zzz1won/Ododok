package com.odd.ododok.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.odd.ododok.dto.TradeDTO;
import com.odd.ododok.repository.TradeRepository;

@Service
public class TradeServiceImpl implements TradeSerivce {

	@Autowired
	private TradeRepository tr;
	
	
	@Override
	public void donate(TradeDTO trade) {
		System.out.println("TradeService.donate");
		tr.donate(trade);
	}
	
	@Override
	public List<TradeDTO> purList() {
		System.out.println("TradeService.purchas");
		List<TradeDTO> tradeList= tr.purList();
		return tradeList;
	}

	@Override
	public void purchas(TradeDTO trade) {
		System.out.println("TradeService.purchas");
		tr.purchas(trade);
	}

	@Override
	public List<TradeDTO> search(String searchtype, String keyword) {
		System.out.println("TradeService.search");
		Map<String, String> searchParam = new HashMap<String,String>();
		searchParam.put("type", searchtype);
		searchParam.put("word", keyword);
		List<TradeDTO> tradeList = tr.search(searchParam);
		return tradeList;
	}


}
