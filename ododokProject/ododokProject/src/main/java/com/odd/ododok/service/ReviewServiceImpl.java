package com.odd.ododok.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.odd.ododok.dto.BookDTO;
import com.odd.ododok.dto.ReviewDTO;
import com.odd.ododok.repository.ReviewRepository;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewRepository rr;
	
	@Override
	public void reviewWrite(ReviewDTO review) {
		System.out.println("ReviewService.review");
		rr.reviewWrite(review);
		
	}
	
	//1230-도서선택해서 데이터 가져와야하니까
	@Override
	public BookDTO select(long b_number) {
		System.out.println("ReviewService.select");
		BookDTO book = rr.select(b_number);
		return book;
	}

	@Override
	public List<ReviewDTO> reviewAll(long b_number) {
		System.out.println("ReviewService.reviewList");
		return rr.reviewAll(b_number);
	}

	/*
	@Override
	public ReviewDTO view(long r_number) {
		System.out.println("ReviewService.view");
		ReviewDTO review = rr.view(r_number);
		return review;
	}*/
	 


}
