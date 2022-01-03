package com.odd.ododok.service;

import java.util.List;

import com.odd.ododok.dto.BookDTO;
import com.odd.ododok.dto.ReviewDTO;

public interface ReviewService {

	public BookDTO select(long b_number);
	
	public void reviewWrite(ReviewDTO review);

	public List<ReviewDTO> reviewAll(long b_number);


	

	



}
