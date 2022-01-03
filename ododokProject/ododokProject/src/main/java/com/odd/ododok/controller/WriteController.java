package com.odd.ododok.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.odd.ododok.dto.CommentDTO;
import com.odd.ododok.dto.FamilyDTO;
import com.odd.ododok.dto.NoticeDTO;
import com.odd.ododok.dto.PageDTO;
import com.odd.ododok.dto.WriteDTO;
import com.odd.ododok.service.CommentService;
import com.odd.ododok.service.FamilyService;
import com.odd.ododok.service.NoticeService;
import com.odd.ododok.service.WriteService;

@RequestMapping(value="/write/*")

@Controller
public class WriteController {

	@Autowired
	private WriteService ws;
	
	@Autowired
	private CommentService cs;
	
	@Autowired
	private FamilyService fs;
	
	@Autowired
	private NoticeService ns;
	
	//1220-03-게시판시작! 글목록출력+페이징
	@RequestMapping(value="writeAll", method=RequestMethod.GET)
	public String writeAll(Model model) {
		List<WriteDTO> writeList = ws.writeAll();
		System.out.println("writeController.writeAll");
		model.addAttribute("writeList", writeList);
		return "write/writeAll";
	}
	
	//1220-04-글쓰기
	@RequestMapping(value="essayForm", method=RequestMethod.GET)
	public String essayForm()	{
		System.out.println("writeController.essayForm");
		return "write/essayForm";
	}
	
	//1220-05-글쓰기 처리
	@RequestMapping (value="essay", method=RequestMethod.POST)
	public String essay(@ModelAttribute WriteDTO write, FamilyDTO family, @RequestParam("f_number") long f_number )  throws IllegalStateException, IOException	{
		System.out.println("WriteController.essay");
		ws.essay(write);
		
		// 1227 포인트증가시키는...(feat.조회수상승) 헭 된다!
		fs.addPoint(f_number);
		System.out.println(family);
		return "redirect:/write/paging";
	}
	
	
	//1220-06-페이징 처리
	@RequestMapping (value="paging", method=RequestMethod.GET)
	public String paging(@RequestParam(value="page", required=false, defaultValue="1") int page, Model model)	{
		//value : 파라미터 이름, required : 필수여부, defaultValue : 기본값(page요청값이 없으면 1로 셋팅)
		
		PageDTO paging = ws.paging(page);
		List<WriteDTO> writeList = ws.pagingList(page);
		model.addAttribute("paging", paging);
		model.addAttribute("writeList", writeList);
		return "write/writeAll";
	}
	
	
	
	// 1221-01-글 조회 및 조회수 상승
	@RequestMapping (value="writeView", method = RequestMethod.GET)
	public String writeView(@RequestParam(value="page", required=false, defaultValue="1") int page,
			Model model, @RequestParam("w_number") long w_number) {
		
		ws.hits(w_number);		
		WriteDTO write = ws.writeView(w_number);
		System.out.println("WriteController.writeView");
		model.addAttribute("write", write);

		ns.hits(w_number);
		NoticeDTO notice = ns.writeView(w_number);
		model.addAttribute("notice", notice);
		
		model.addAttribute("page",page);
		System.out.println(write);
		
		List<CommentDTO> commentList = cs.commentAll(w_number);
		model.addAttribute("commentList", commentList);
		System.out.println("commentList"+commentList);
		
		return "write/writeView";	
	}
	
	
	// 1221-02-글 삭제
	@RequestMapping (value="delete", method=RequestMethod.GET)
	public String delete(@RequestParam("w_number") long w_number)	{
		ws.delete(w_number);
		System.out.println("WriteController.delete");
		return "redirect:/write/writeAll";
	}
	
	// 1221-03-글 수정
	@RequestMapping (value="update", method=RequestMethod.GET)
	public void updateForm (Model model, @RequestParam("w_number") long w_number) {
		System.out.println("WriteController.updateForm");
		WriteDTO write = ws.updateForm(w_number);
		System.out.println(write);
		model.addAttribute("write", write);
	}
	
	@RequestMapping (value="update", method=RequestMethod.POST)
	public String update(@ModelAttribute WriteDTO write) {
		ws.update(write);
		System.out.println("w"+write);
		System.out.println("WriteController.update");
		return "redirect:/write/writeAll";
	}
	
	// 1224-05-검색기능 추가
	@RequestMapping(value="search", method=RequestMethod.GET)
	public String search(Model model, @RequestParam("searchtype") String searchtype,
			@RequestParam("keyword") String keyword)	{
		System.out.println("WriteController.search");
		List<WriteDTO> writeList = ws.search(searchtype,keyword);
		model.addAttribute("writeList", writeList);
		System.out.println(searchtype+keyword);
				return "write/writeAll";
	};
	

	// 1229-01 공지기능 추가를 위한...
	//1229-02-공지폼 출력
	@RequestMapping(value="noticeForm", method=RequestMethod.GET)
	public String noticeForm() {
		System.out.println("WriteController.noticeForm");
		return "write/noticeForm";	
	}

	//1229-03-공지입력 처리
	@RequestMapping (value="notice", method=RequestMethod.POST)
	public String notice (@ModelAttribute NoticeDTO notice) throws IllegalStateException, IOException	{
		System.out.println("WriteController.notice");
		System.out.println(notice);
		ns.ntcView(notice);
		return "redirect:/write/paging";
	}

	
	
	
	
	
	
	/*public String notice(@ModelAttribute WriteDTO write, FamilyDTO family, @RequestParam("f_number") long f_number )  
		System.out.println("WriteController.essay");
		ws.essay(write);
		
		// 1227 포인트증가시키는...(feat.조회수상승) 헭 된다!
		fs.addPoint(f_number);
		System.out.println(family);
		return "redirect:/write/writeAll";
	}*/
	
	
	
	
	
	
	
	
	
	
	
	
}
