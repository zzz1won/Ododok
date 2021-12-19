package com.odd.ododok.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.odd.ododok.dto.FamilyDTO;
import com.odd.ododok.service.FamilyService;

@Controller
@RequestMapping(value="/family/*")
public class FamilyController {

	
	// 1216 - 
	// url : /ododok/family/join *^ㅇ^* 좋아 원했던대로 되고있다!
	
	// 1216-03-join 회원가입창 출력
	@RequestMapping (value="join", method=RequestMethod.GET)
	public String joinForm()	{
		System.out.println("familyController.joinForm 실행");
		return "family/join";
	}
	
	@Autowired
	private FamilyService fs; //1217-01-01 적어준 후 serviceClass를 호출하는 Autowired Annotation(2)
	
	// 1217-01-join 회원가입 저장
	@RequestMapping (value="join", method=RequestMethod.POST)
	public String join(@ModelAttribute FamilyDTO family) throws IllegalStateException, IOException	{
		System.out.println("familyController.join: "+family);
		fs.join(family); //1217-01-01 적어준 후 serviceClass를 호출하는 Autowired Annotation(1)
		return "redirect:/main";
	}
	
	// 1217-03-loginForm 로그인 폼 출력
	@RequestMapping (value="login", method=RequestMethod.GET)
	public String loginForm() {
		System.out.println("FamilyController_loginForm");
		return "family/login";
		
	}
	
	// 1217-03-login 로그인 처리
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String login(@ModelAttribute FamilyDTO family)	{
		String resultPage = fs.login(family);
		System.out.println("FamilyController_login"+resultPage);
		return resultPage;
	}
	
	//	1217-04-logout 로그아웃
	@RequestMapping(value="logout", method = RequestMethod.GET)
	public String logout(HttpSession session)	{
		session.invalidate();
		return "redirect:/main";
	}
	
	//	1217-05-mypage 마이페이지폼출력
	@RequestMapping (value="mypage", method = RequestMethod.GET)
	public String mypage()	{
		return null;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
