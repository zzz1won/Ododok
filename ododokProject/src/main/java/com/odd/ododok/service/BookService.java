package com.odd.ododok.service;

import java.util.List;

import com.odd.ododok.dto.BookDTO;
import com.odd.ododok.dto.PageDTO;

public interface BookService {

	public List<BookDTO> bookAll();

	public List<BookDTO> readingList();

	public BookDTO best10(long b_number);

	public List<BookDTO> search(String searchtype, String keyword);

	public List<BookDTO> recommendList();

	public List<BookDTO> newList();

	public PageDTO paging(int page);

	public List<BookDTO> pagingList(int page);

	

}
