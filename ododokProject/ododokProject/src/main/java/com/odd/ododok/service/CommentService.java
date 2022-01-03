package com.odd.ododok.service;

import java.util.List;

import com.odd.ododok.dto.CommentDTO;

public interface CommentService {

	public void save(CommentDTO comment);

	public List<CommentDTO> commentAll(long w_number);

}
