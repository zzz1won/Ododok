package com.odd.ododok.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.odd.ododok.dto.BookDTO;
import com.odd.ododok.dto.PageDTO;
import com.odd.ododok.dto.ReviewDTO;
import com.odd.ododok.service.BookService;
import com.odd.ododok.service.ReviewService;


@Controller

@RequestMapping (value="/book/*")
public class BookController {
	
	@Autowired
	private BookService bs;
	
	@Autowired
	private ReviewService rs;
	
	// 1224-01 관리자용 도서확인
	@RequestMapping (value="bookAll",method=RequestMethod.GET)
	public String bookAll(Model model) {
		System.out.println("BookController.(admin)bookList");
		List<BookDTO> bookList = bs.bookAll();
		model.addAttribute("bookList", bookList);
		return "book/bookAll";
	}
	
	// 1224-02 12월 인기도서 (1~10위)
	@RequestMapping (value="readingList", method = RequestMethod.GET) 
	public String readingList (Model model)	{
		System.out.println("BookController.readingList");
		List<BookDTO> bookList = bs.readingList();
		model.addAttribute("bookList", bookList);
		return "book/readingList";		
	};
	
	// 1224-03 도서 상세조회
	@RequestMapping(value="bookView", method=RequestMethod.GET)
	public String best10(@RequestParam("b_number") long b_number, 
			/* @RequestParam("b_number") long r_number, */
			Model model)	{
		System.out.println("BookController.best10");
		BookDTO book = bs.best10(b_number);
		model.addAttribute("book", book);
		
		String b = book.getL_name();
		String[] ba = b.split(",");
		model.addAttribute("ba", ba);
		
		 List<ReviewDTO> reviewList = rs.reviewAll(b_number);
		 model.addAttribute("reviewList",reviewList);
		 
		 
		
		/*
		ReviewDTO review = rs.view(r_number); 
		model.addAttribute("review", review);
		*/
		
		return "book/bookView";
	};
	
	// 1224-04 검색어 메소드
	@RequestMapping(value="search", method=RequestMethod.GET)
	public String search(Model model, @RequestParam("searchtype") String searchtype,
			@RequestParam("keyword") String keyword)	{
		System.out.println("BookController.search");
		List<BookDTO> bookList = bs.search(searchtype,keyword);
		model.addAttribute("bookList", bookList);
		System.out.println(searchtype+keyword);
				return "book/readingList";
	};

	// 1224-05 추천도서 1~10권
	@RequestMapping(value="recommendList", method=RequestMethod.GET)
	public String recommendList (Model model) {
		System.out.println("BookController.recommend");
		List<BookDTO> bookList = bs.recommendList();
		model.addAttribute("bookList", bookList);
		return "book/recommendList";		
	};
	
	// 1224-06 신작도서 1~10권
	@RequestMapping(value="newList", method=RequestMethod.GET)
	public String newList(Model model)	{
		System.out.println("BookController.newList");
		List<BookDTO> bookList = bs.newList();
		model.addAttribute("bookList", bookList);
		return "book/newList";	
	};
	
	// 1227-01 (관리자) 도서출력 페이징처리
	@RequestMapping (value="paging", method=RequestMethod.GET)
	public String paging(@RequestParam(value="page", required=false, defaultValue="1") int page, Model model)	{
		//value : 파라미터 이름, required : 필수여부, defaultValue : 기본값(page요청값이 없으면 1로 셋팅)
		
		PageDTO paging = bs.paging(page);
		List<BookDTO> bookList = bs.pagingList(page);
		model.addAttribute("paging", paging);
		model.addAttribute("bookList", bookList);
		return "book/bookAll";
	};
	
	

	
		
}
