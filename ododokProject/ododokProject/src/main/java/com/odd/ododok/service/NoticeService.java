package com.odd.ododok.service;

import java.io.IOException;
import java.util.List;

import com.odd.ododok.dto.NoticeDTO;

public interface NoticeService {

	
	//1229
	public List<NoticeDTO> ntcAll();

	public void ntcView(NoticeDTO notice)throws IllegalStateException, IOException;

	public NoticeDTO writeView(long w_number);

	public NoticeDTO hits(long w_number);
	
}
