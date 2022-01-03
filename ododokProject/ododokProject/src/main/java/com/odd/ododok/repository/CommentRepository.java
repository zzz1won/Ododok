package com.odd.ododok.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.odd.ododok.dto.CommentDTO;

@Repository
public class CommentRepository {

	@Autowired
	private SqlSessionTemplate sql;
	
	public void save(CommentDTO comment) {
		System.out.println("CommentRepository.save");
		sql.insert("Comment.commentSave",comment);
	}

	public List<CommentDTO> commentAll(long w_number) {
		System.out.println("CommentRepository.commentAll");
		return sql.selectList("Comment.commentAll", w_number);
	}

}
