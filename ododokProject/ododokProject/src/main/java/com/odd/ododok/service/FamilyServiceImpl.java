package com.odd.ododok.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.odd.ododok.dto.FamilyDTO;
import com.odd.ododok.repository.FamilyRepository;


//구현클래스에 @서비스 어노테이션 붙이기

@Service
public class FamilyServiceImpl implements FamilyService {

	@Autowired
	private FamilyRepository fr;
	
	@Override			// 1216-03-join 회원가입창 출력
	public void join(FamilyDTO family) throws IllegalStateException, IOException {
		MultipartFile f_file = family.getF_file(); 
		String f_filename = f_file.getOriginalFilename();
		f_filename = System.currentTimeMillis()+ "-" + f_filename;
		
		System.out.println("FamilyService.f_filename"+f_filename);
		String savePath = "C:\\Users\\exo_g\\Documents\\spring_sts\\ododokProject\\src\\main\\webapp\\resources\\upload" + f_filename;
		if (!f_file.isEmpty()) {
			f_file.transferTo(new File(savePath));
		}
		
		family.setF_filename(f_filename);
		fr.join(family); //1217-01-01 적어준 후 RepositoryClass를 호출하는 Autowired Annotation(1)
	}

	
	@Autowired 
	private HttpSession session;
	 
	public String login(FamilyDTO family) {
		FamilyDTO familyLogin = fr.login(family);
		
		if (familyLogin != null)	{
			session.setAttribute("LoginDTO", familyLogin);
			System.out.println("로그인 성공");
			return "redirect:/main";
		}	else	{
			System.out.println("로그인 실패");
			return "family/login";
		}
	}

	@Override
	public FamilyDTO mypage(long f_number) {
		FamilyDTO family = fr.mypage(f_number);
		System.out.println("FamilyService.mypage실행");
		return family;
	}

	//editpage 출력
	@Override
	public FamilyDTO editForm(long f_number) {
		FamilyDTO family = fr.editForm(f_number);
		System.out.println("FamilyService.editForm실행");
		return family;
	}

	//edit 처리
	@Override
	public void edit(FamilyDTO family) {
		fr.edit(family);
	}

	@Override
	public List<FamilyDTO> famList() {
		List<FamilyDTO> familyList = fr.famList();
		System.out.println("FamilyService.famList실행");
		for(FamilyDTO f:familyList)	{
			System.out.println(f);
		}
		return familyList;
	}

	@Override
	public FamilyDTO delete(long f_number) {
		FamilyDTO family = fr.delete(f_number);
		System.out.println("FamilyService.delete실행");
		return family;
	}
	
	//1227

	@Override
	public void addPoint(long f_number) {
		System.out.println("WriteService.addPoint1실행");
		fr.addPoint(f_number);	
	}

	@Override
	public void addPoint2(long f_number) {
		System.out.println("WriteService.addPoint2실행");
		fr.addPoint2(f_number);
	}

	@Override
	public void donaPoint(long f_number) {
		System.out.println("TradeService.donaPoint");
		fr.donaPoint(f_number);
		
	}

	@Override
	public void purPoint(long f_number) {
		System.out.println("TradeService.purPoint");
		fr.purPoint(f_number);
	}

	@Override
	public long pwch(FamilyDTO family) {
		return fr.pwch(family);
	}


	
	
	
	

	
	

	
	



	
	

	





}
