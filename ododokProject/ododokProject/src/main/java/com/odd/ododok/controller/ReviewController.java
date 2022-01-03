package com.odd.ododok.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.odd.ododok.dto.BookDTO;
import com.odd.ododok.dto.ReviewDTO;
import com.odd.ododok.service.ReviewService;

@RequestMapping (value="/review/")

@Controller
public class ReviewController {

		@Autowired
		private ReviewService rs;
		
	@RequestMapping(value="reviewForm", method=RequestMethod.GET)
	public String reviewForm (@RequestParam("b_number") long b_number,Model model)	{
		System.out.println("ReviewController.reviewForm");
		BookDTO book = rs.select(b_number);
		model.addAttribute("book", book);
		return "/review/reviewForm";
	}
	
	@RequestMapping(value="reviewWrite", method=RequestMethod.POST)
	public String reviewWrite(@ModelAttribute ReviewDTO review, @RequestParam("b_number") long b_number,Model model)	{
		System.out.println("ReviewController.review");
		rs.reviewWrite(review);		
		BookDTO book = rs.select(b_number);
		model.addAttribute("book", book);
		return "redirect:/./main";
	}
	
/*	@RequestMapping(value="reviewList", method=RequestMethod.GET)
	public String reviewList(@RequestParam("b_number") long b_number,
			Model model)	{
		
		List<ReviewDTO> reviewList = rs.reviewList(b_number);
		model.addAttribute("reviewList", reviewList);
		return "./book/bookView";*/
	
}
