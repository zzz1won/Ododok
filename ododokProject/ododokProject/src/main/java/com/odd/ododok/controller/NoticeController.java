package com.odd.ododok.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.odd.ododok.dto.NoticeDTO;
import com.odd.ododok.service.NoticeService;

@RequestMapping(value="/write/*")

@Controller
public class NoticeController {
	
	@Autowired private NoticeService ns;
	  
	 
	 /* // 1229-01 공지기능 추가를 위한... //1229-02-공지폼 출력
	 * 
	 * @RequestMapping(value="noticeForm", method=RequestMethod.GET) public String
	 * noticeForm() { System.out.println("WriteController.noticeForm"); return
	 * "write/noticeForm"; }
	 * 
	 * //1229-03-글쓰기 처리
	 * 
	 * @RequestMapping (value="notice", method=RequestMethod.POST) public String
	 * ntcView (@ModelAttribute NoticeDTO notice) throws IllegalStateException,
	 * IOException { System.out.println("WriteController.notice");
	 * ns.ntcView(notice); return "redirect:/write/paging"; }
	 */
	
	
	

	  //1229-04
		
		@RequestMapping (value="noticeAll", method=RequestMethod.GET ) 
	  	public String writeNtcAll(Model model) {
		System.out.println("NoticeController.ntcAll"); 
		List <NoticeDTO> noticeList = ns.ntcAll(); 
		System.out.println(noticeList); 
		model.addAttribute("ntcList", noticeList); 
		return "write/paging";
		}
		
	
	
	
}
