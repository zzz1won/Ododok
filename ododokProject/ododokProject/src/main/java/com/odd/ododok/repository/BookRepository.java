package com.odd.ododok.repository;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.odd.ododok.dto.BookDTO;

@Repository
public class BookRepository {

	@Autowired
	private SqlSessionTemplate sql;
	
	public List<BookDTO> bookAll() {
		System.out.println("BookRepository.bookList");
		return sql.selectList("Book.bookAll");
	}

	public List<BookDTO> readingList() {
		System.out.println("BookRepository.readingList");
		return sql.selectList("Book.readingList");
	}

	public BookDTO best10(long b_number) {
		System.out.println("BookRepository.best10View");
		return sql.selectOne("Book.best10", b_number);
	}

	public List<BookDTO> search(Map<String, String> searchParam) {
		System.out.println("BookRepository.search");
		return sql.selectList("Book.search",searchParam);
	}

	public List<BookDTO> recommendList() {
		System.out.println("BookRepository.recommendList");
		return sql.selectList("Book.recommendList");
	}

	public List<BookDTO> newList() {
		System.out.println("BookRepository.newList");
		return sql.selectList("Book.newList");
	}

	// 1227-01 페이징
	
	public List<BookDTO> pagingList(int pagingStart) {
		return sql.selectList("Book.pagingList", pagingStart);
	}
	
	public List<BookDTO> pagingList1(Map<String, Integer> pagingParam) {
		return sql.selectList("Book.pagingList1", pagingParam);
	}
	
	public int boardCount() {
		return sql.selectOne("Book.count");
	}

}
