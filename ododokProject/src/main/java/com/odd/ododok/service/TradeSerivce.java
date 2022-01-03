package com.odd.ododok.service;

import java.util.List;

import com.odd.ododok.dto.TradeDTO;

public interface TradeSerivce {

	public void donate(TradeDTO trade);

	public List<TradeDTO> purList();

	public void purchas(TradeDTO trade);

	public List<TradeDTO> search(String searchtype, String keyword);

}
