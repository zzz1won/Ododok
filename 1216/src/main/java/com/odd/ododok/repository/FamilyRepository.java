package com.odd.ododok.repository;

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

}
