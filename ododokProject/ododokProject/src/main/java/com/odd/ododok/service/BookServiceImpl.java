package com.odd.ododok.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.odd.ododok.dto.BookDTO;
import com.odd.ododok.dto.PageDTO;

import com.odd.ododok.repository.BookRepository;

@Service
public class BookServiceImpl implements BookService {

	@Autowired
	private BookRepository br;
	
	@Override
	public List<BookDTO> bookAll() {
		System.out.println("BookService.bookList");
		return br.bookAll();
	}

	@Override
	public List<BookDTO> readingList() {
		System.out.println("BookService.bookList");
		return br.readingList();
	}

	@Override
	public BookDTO best10(long b_number) {
		System.out.println("BookService.best10View");
		BookDTO book = br.best10(b_number);
		return book;
	}

	@Override
	public List<BookDTO> search(String searchtype, String keyword) {
		Map<String, String> searchParam = new HashMap<String, String>();
		searchParam.put("type", searchtype);
		searchParam.put("word", keyword);
		List<BookDTO> bookList = br.search(searchParam);
		System.out.println("BookService.search");
		return bookList;
	}

	@Override
	public List<BookDTO> recommendList() {
		System.out.println("BookService.recommendList");
		return br.recommendList();
	}
		
	@Override
	public List<BookDTO> newList() {
		System.out.println("BookService.newList");
		return br.newList();
	}

	
	// 1227-01-페이징처리
	
	private static final int PAGE_LIMIT = 10;
	private static final int BLOCK_LIMIT = 10;
	
	
	public List<BookDTO> pagingList(int page) {
		int pagingStart = (page-1) * PAGE_LIMIT;
		Map<String, Integer> pagingParam = new HashMap<String, Integer>();
		pagingParam.put("start", pagingStart);
		pagingParam.put("limit", PAGE_LIMIT);
		/* List<BookDTO> pagingList = br.pagingList(pagingStart); */
		List<BookDTO> pagingList = br.pagingList1(pagingParam);
		for(BookDTO b: pagingList) {
			System.out.println(b.toString());
		}
		return pagingList;
	}
	
	public PageDTO paging(int page) {
		int boardCount = br.boardCount();
		int maxPage = (int)(Math.ceil((double)boardCount / PAGE_LIMIT));
		int startPage = (((int)(Math.ceil((double)page / BLOCK_LIMIT))) - 1) * BLOCK_LIMIT + 1;
		int endPage = startPage + BLOCK_LIMIT - 1;
		if(endPage > maxPage)
			endPage = maxPage; 
		PageDTO paging = new PageDTO();
		paging.setPage(page);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		paging.setMaxPage(maxPage);
		
		System.out.println("paging.toString(): "+ paging.toString());
		
		return paging;
	}



}
