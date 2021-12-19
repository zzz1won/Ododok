package com.odd.ododok.service;

import java.io.IOException;
import java.util.List;

import com.odd.ododok.dto.FamilyDTO;

public interface FamilyService {

	

	/* 1216_이번엔 정말 interface 추가해서 진행!
	 * public class BookService {
	 * 인터페이스 기능!, 추상메서드를 가진다.
	 * 추상메서드 : 실행블록은 없음, 선언만 한다. 
	 * interface를 구현하는 implements 에서 실행블록 작성 */

	
	
	public void join(FamilyDTO family) throws IllegalStateException, IOException;

	public String login(FamilyDTO familyLogin);

	public FamilyDTO mypage(long f_number);

	public FamilyDTO editForm(long f_number);

	public void edit(FamilyDTO family);

	public List<FamilyDTO> famList();


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
