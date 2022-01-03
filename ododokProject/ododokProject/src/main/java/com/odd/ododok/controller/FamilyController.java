package com.odd.ododok.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.odd.ododok.dto.FamilyDTO;
import com.odd.ododok.service.FamilyService;

@Controller
@RequestMapping(value = "/family/*")
public class FamilyController {
	
	
	// 1216 -
	// url : /ododok/family/join *^ㅇ^* 좋아 원했던대로 되고있다!

	// 1216-03-join 회원가입창 출력
	@RequestMapping(value = "join", method = RequestMethod.GET)
	public String joinForm() {
		System.out.println("familyController.joinForm 실행");
		return "family/join";
	}

	@Autowired
	private FamilyService fs; // 1217-01-01 적어준 후 serviceClass를 호출하는 Autowired Annotation(2)

	// 1217-01-join 회원가입 저장
	@RequestMapping(value = "join", method = RequestMethod.POST)
	public String join(@ModelAttribute FamilyDTO family) throws IllegalStateException, IOException {
		System.out.println("familyController.join: " + family);
		fs.join(family); // 1217-01-01 적어준 후 serviceClass를 호출하는 Autowired Annotation(1)
		return "redirect:/main";
	}

	// 1217-03-loginForm 로그인 폼 출력
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String loginForm() {
		System.out.println("FamilyController_loginForm");
		return "family/login";

	}

	// 1217-03-login 로그인 처리
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(@ModelAttribute FamilyDTO family) {
		String resultPage = fs.login(family);
		System.out.println("FamilyController_login" + resultPage);
		return resultPage;
	}

	// 1217-04-logout 로그아웃
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/main";
	}

  // 1219-01-mypage 마이페이지폼출력

	 @RequestMapping(value="mypage", method=RequestMethod.GET) 
	 public String mypage(Model model, @RequestParam("f_number") long f_number) { 
		 FamilyDTO family = fs.mypage(f_number); 
		 model.addAttribute("family", family);
		 System.out.println("FamilyController.mypage 실행, familyDTO: "+ family + "f_number: "+ f_number); 
			return "family/mypage";
			/* return "family/mypage?f_number="+family.getF_number(); */ }
	 
	 @RequestMapping(value="pwch", method=RequestMethod.POST)
	 @ResponseBody
	 public String pwch(@ModelAttribute FamilyDTO family) {
		 long f_number = fs.pwch(family);
		 String result;
		 
		 if(f_number==0) {
			 result="no";
		 } else {
			 result ="ok";
		 }
		 
		 return result;
	 }

	 // 1219-02-수정페이지 출력
	 @RequestMapping(value="editForm", method=RequestMethod.POST)
	 public void editForm(Model model, @RequestParam("f_number") long f_number)	{
		 System.out.println("FamilyController.editForm 실행");
		 FamilyDTO family = fs.editForm(f_number);
		 model.addAttribute("family",family);
	 }

	 // 1219-03-수정페이지 처리
	 @RequestMapping(value="edit", method=RequestMethod.POST)
	 public String edit(@ModelAttribute FamilyDTO family)	{
		 System.out.println("FamilyController.edit 실행");
		 fs.edit(family);
		return "redirect:/main";
	 }
	 
	 
	 // 1219-04-회원목록조회
	 @RequestMapping (value="famList", method=RequestMethod.GET)
	 public String famList(Model model)	{
		List<FamilyDTO> familyAll = fs.famList();
		model.addAttribute("familyAll", familyAll);
		 System.out.println("FamilyController.famList 실행");
		 return "family/famList";
	 }
	 
	 // 1220-01-회원삭제
	 @RequestMapping (value="delete", method=RequestMethod.GET)
	 public String delete(Model model, @RequestParam ("f_number") long f_number)	{
		 FamilyDTO family = fs.delete(f_number);
		 System.out.println("FamilyController.delete 실행");
		return "redirect:/family/famList";
	 }
	 
	 // 1220-02-회원탈퇴
	 
	 
	 
}
