package com.odd.ododok.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.odd.ododok.dto.LibraryDTO;

@Repository
public class LibraryRepository {

	@Autowired
	private SqlSessionTemplate sql;

	public List<LibraryDTO> libraryAll() {
		System.out.println("libListRepository.libList");
		return sql.selectList("Library.libraryAll");
	}

	public LibraryDTO libraryView(long l_number) {
		System.out.println("libraryRepository.libView");
		return sql.selectOne("Library.libraryView",l_number);
	}


	
}
