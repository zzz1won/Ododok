package com.odd.ododok.service;

import java.io.IOException;
import java.util.List;

import com.odd.ododok.dto.NoticeDTO;
import com.odd.ododok.dto.PageDTO;
import com.odd.ododok.dto.WriteDTO;

public interface WriteService {

	public List<WriteDTO> writeAll();

	public void essay(WriteDTO write) throws IllegalStateException, IOException;

 	public PageDTO paging(int page);

	public List<WriteDTO> pagingList(int page);

	
	//1221
	public WriteDTO hits(long w_number);

	public WriteDTO writeView(long w_number);

	public void delete(long w_number);

	public WriteDTO updateForm(long w_number);

	public void update(WriteDTO write);

	public List<WriteDTO> search(String searchtype, String keyword);

	/* public List<NoticeDTO> ntcAll(); */
	










	

}
