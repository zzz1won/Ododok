package com.odd.ododok.repository;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.odd.ododok.dto.TradeDTO;

@Repository
public class TradeRepository {

	@Autowired
	private SqlSessionTemplate sql;
	public List<TradeDTO> purchas;
	
	public void donate(TradeDTO trade) {
		System.out.println("TradeRepository.donate");
		sql.insert("Trade.donate",trade);
		
	}

	public List<TradeDTO> purList() {
		System.out.println("TradeRepository.purchas");
		return sql.selectList("Trade.purList");
	}

	public void purchas(TradeDTO trade) {
		System.out.println("TradeRepository.purchas");
		sql.update("Trade.purchas",trade); 
	}

	public List<TradeDTO> search(Map<String, String> searchParam) {
		System.out.println("TradeRepository.search");
		return sql.selectList("Trade.search",searchParam);
	}
	

	
}
