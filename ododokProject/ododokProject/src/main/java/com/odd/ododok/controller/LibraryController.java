package com.odd.ododok.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.odd.ododok.dto.LibraryDTO;
import com.odd.ododok.service.LibraryService;



@Controller

@RequestMapping (value="/library/*")
public class LibraryController {

	
	@Autowired
	private LibraryService ls;
	
		// 1222-01-library info
		@RequestMapping (value="info", method = RequestMethod.GET)
		public String info () {
			System.out.println("LibraryController.info");
			return "library/info";			
		}
		

		// 1223-01-도서관 리스트 출력
		@RequestMapping(value="libraryAll", method = RequestMethod.GET)
		public String libraryAll(Model model)	{
			List<LibraryDTO> libraryList = ls.libraryAll();
			model.addAttribute("libraryList", libraryList);
			System.out.println("LibraryController.libraryAll");
			System.out.println(libraryList);
			return "library/libraryAll";
		}
		
		
		// 1223-02-도서관 상세조회
		
	@RequestMapping(value="libraryView", method=RequestMethod.GET)
	public String libraryView(Model model, @RequestParam("l_number") long l_number)	{
		
		LibraryDTO library = ls.libraryView(l_number);
		model.addAttribute("library", library);
		System.out.println("LibraryController.view");
		return null;
		
	}
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
