package com.odd.ododok.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.odd.ododok.dto.NoticeDTO;

@Repository
public class NoticeRepository {

	
		@Autowired
		private SqlSessionTemplate sql;
		
	public List<NoticeDTO> ntcAll() {
		 System.out.println("NoticeRepository.ntcAll");
		 return sql.selectList("Notice.noticeAll"); 
		 }
		 
	public void ntcView(NoticeDTO notice) {
		System.out.println("NoticeRepository.ntcView");
		sql.insert("Notice.ntcView", notice);
		
	}

	public NoticeDTO writeView(long w_number) {
		System.out.println("NoticeRepository.writeView");
		return sql.selectOne("Notice.noticeView", w_number);
	}

	public NoticeDTO hits(long w_number) {
		System.out.println("NoticeRepository.hits");
		return sql.selectOne("Notice.hits", w_number);
		
	}

	
}
