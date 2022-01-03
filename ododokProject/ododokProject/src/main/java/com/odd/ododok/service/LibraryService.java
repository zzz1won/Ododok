package com.odd.ododok.service;

import java.util.List;

import com.odd.ododok.dto.LibraryDTO;


public interface LibraryService {

	public List<LibraryDTO> libraryAll();

	public LibraryDTO libraryView(long l_number);




}
