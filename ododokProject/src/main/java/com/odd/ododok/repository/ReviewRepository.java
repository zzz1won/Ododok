package com.odd.ododok.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.odd.ododok.dto.BookDTO;
import com.odd.ododok.dto.ReviewDTO;

@Repository
public class ReviewRepository {

	@Autowired
	private SqlSessionTemplate sql;
	
	public void reviewWrite(ReviewDTO review) {
		System.out.println("ReviewRepository.review");
		sql.insert("Review.reviewWrite",review);
		
	}

	public BookDTO select(long b_number) {
		System.out.println("ReviewRepository.select");
		return sql.selectOne("Review.selectBook", b_number);
	}

	public List<ReviewDTO> reviewAll(long b_number) {
		System.out.println("ReviewRepository.reviewList");
		return sql.selectList("Review.reviewAll",b_number);
	}

/*
	public ReviewDTO view(long r_number) {
		System.out.println("ReviewRepository.select");
		return sql.selectOne("Review.view",r_number);
	}*/
	

	
/*
  public List<ReviewDTO> reviewAll() {
  System.out.println("ReviewRepository.reviewAll");
  return sql.selectList("Review.reviewAll"); }
 */

}
