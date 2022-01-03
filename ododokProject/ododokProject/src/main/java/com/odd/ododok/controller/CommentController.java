package com.odd.ododok.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.odd.ododok.dto.CommentDTO;
import com.odd.ododok.dto.FamilyDTO;
import com.odd.ododok.service.CommentService;
import com.odd.ododok.service.FamilyService;

@Controller
@RequestMapping ( value = "/comment/*")

public class CommentController {
		
	@Autowired
	private CommentService cs;
	
	@Autowired
	private FamilyService fs;
	
	@RequestMapping (value="commentSave", method=RequestMethod.POST)
	public @ResponseBody List<CommentDTO> save (@ModelAttribute CommentDTO comment, FamilyDTO family,
			@RequestParam("f_number") long f_number)	{
		System.out.println("CommentController.commentSave"+comment);
		cs.save(comment);
		List<CommentDTO> commentList = cs.commentAll(comment.getW_number());
		
		// 1227 포인트증가시키는...(feat.조회수상승) 댓글도 됐으면...꺄르륵 된당
		fs.addPoint2(f_number);
		
		return commentList;
		
	}
	

}
