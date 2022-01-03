package com.odd.ododok.repository;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.odd.ododok.dto.NoticeDTO;
import com.odd.ododok.dto.WriteDTO;

@Repository
public class WriteRepository {

	@Autowired
	private SqlSessionTemplate sql;
	
	public List<WriteDTO> writeAll() {
		System.out.println("writeRepository.writeAll");
		return sql.selectList("Write.writeAll");
	}

	public void essay(WriteDTO write) {
		System.out.println("writeRepository.essay");
		sql.insert("Write.essay", write);
	}

	// 1220-06-페이징관련 -----------------------------------------------
	public int boardCount() {
		return sql.selectOne("Write.count");
	}

	public List<WriteDTO> pagingList(int pagingStart) {
		return sql.selectList("Write.pagingList", pagingStart);
	}
	
	public List<WriteDTO> pagingList1(Map<String, Integer> pagingParam) {
		return sql.selectList("Write.pagingList1", pagingParam);
	}
	// 1220-06-페이징관련 -----------------------------------------------

	public WriteDTO hits(long w_number) {
		System.out.println("writeRepository.hits");
		return sql.selectOne("Write.hits",w_number);
	}

	public WriteDTO writeView(long w_number) {
		System.out.println("WriteRepository.writeView");
		return sql.selectOne("Write.writeView",w_number);
	}

	public void delete(long w_number) {
		System.out.println("WriteRepository.delete");
		sql.delete("Write.delete", w_number);
		
	}

	/*
	 * public void update(WriteDTO write) {
	 * System.out.println("WriteRepository.update"); sql.update("Write.update",
	 * write);
	 * 
	 * }
	 */

	public WriteDTO updateForm(long w_number) {
		System.out.println("WriteRepository.updateForm");
		return sql.selectOne("Write.updateForm",w_number);
	}

	public void update(WriteDTO write) {
		System.out.println("WriteRepository.update");
		sql.update("Write.update",write);
		
	}

	public List<WriteDTO> search(Map<String, String> searchParam) {
		System.out.println("WriteRepository.search");
		return sql.selectList("Write.search",searchParam);
	}

	/*
	 * public List<NoticeDTO> ntcAll() {
	 * System.out.println("WriteRepository.ntcAll"); return
	 * sql.selectList("Notice.ntcAll"); }
	 */
	



	
	
	
}
