package com.odd.ododok.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.odd.ododok.dto.CommentDTO;
import com.odd.ododok.repository.CommentRepository;

@Service
public class CommentServiceImpl implements CommentService {

	@Autowired
	private CommentRepository cr;
	
	@Override //댓글작성,저장
	public void save(CommentDTO comment) {
		System.out.println("CommentService.save");
		cr.save(comment);		
	}

	@Override //댓글전체출력
	public List<CommentDTO> commentAll(long w_number) {
		System.out.println("CommentService.commentAll");
		return cr.commentAll(w_number);
	}




}
