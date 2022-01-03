package com.odd.ododok.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.odd.ododok.dto.LibraryDTO;
import com.odd.ododok.repository.LibraryRepository;

@Service 
public class LibraryServiceImpl implements LibraryService {
	
	@Autowired
	private LibraryRepository lr;

	@Override
	public List<LibraryDTO> libraryAll() {
		System.out.println("LibraryService.libList");
		return lr.libraryAll();
	}

	@Override
	public LibraryDTO libraryView(long l_number) {
		LibraryDTO library = lr.libraryView(l_number);
		return library;
	}



}
