package com.odd.ododok.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.odd.ododok.dto.FamilyDTO;

@Repository
public class FamilyRepository {

	@Autowired
	private SqlSessionTemplate sql;
	
	public void join(FamilyDTO family) {
		System.out.println("FamilyRepository.join: "+family);
		sql.insert("Family.join",family);
		
	}

	public FamilyDTO login(FamilyDTO family) {
		System.out.println("FamilyRepository.login: "+family.getF_id()+family.getF_pw());		
		return sql.selectOne("Family.login",family);
	}

	public FamilyDTO mypage(long f_number) {
		System.out.println("FamilyRepository.mypage");
		return sql.selectOne("Family.mypage",f_number);
	}

	public FamilyDTO editForm(long f_number) {
		System.out.println("FamilyRepository.editForm");		
		return sql.selectOne("Family.editForm",f_number);
	}

	public void edit(FamilyDTO family) {
		System.out.println("FamilyRepository.edit");
		sql.update("Family.edit",family);
		
	}

	public List<FamilyDTO> famList() {
		System.out.println("FamilyRepository.famList");
		return sql.selectList("Family.famList");
	}

	public FamilyDTO delete(long f_number) {
		System.out.println("FamilyRepository.delete");
		return sql.selectOne("Family.delete",f_number);
	}

	public void addPoint(long f_number) {
		System.out.println("FamilyRepository.addPoint");
		sql.update("Family.addPoint",f_number);
	}

	public void addPoint2(long f_number) {
		System.out.println("FamilyRepository.addPoint2");
		sql.update("Family.addPoint2",f_number);
	}

	public void donaPoint(long f_number) {
		System.out.println("FamilyRepository.donaPoint");
		sql.update("Family.donaPoint",f_number);
	}

	public void purPoint(long f_number) {
		System.out.println("FamilyRepository.purPoint");
		sql.update("Family.purPoint",f_number);
		
	}

	public long pwch(FamilyDTO family) {
		return sql.selectOne("Family.pwch", family);
	}




}
