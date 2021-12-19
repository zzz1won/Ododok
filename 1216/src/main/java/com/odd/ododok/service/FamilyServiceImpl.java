package com.odd.ododok.service;

import java.io.File;
import java.io.IOException;

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

	





}
