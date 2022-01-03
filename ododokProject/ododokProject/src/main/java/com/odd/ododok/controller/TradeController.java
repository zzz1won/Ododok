package com.odd.ododok.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.odd.ododok.dto.FamilyDTO;
import com.odd.ododok.dto.TradeDTO;
import com.odd.ododok.service.FamilyService;
import com.odd.ododok.service.TradeSerivce;

@RequestMapping ("/trade/*")

@Controller
public class TradeController {
	
	@Autowired
	private TradeSerivce ts;
	
	@Autowired
	private FamilyService fs;
	
	
	// 1227 도서거래 시스템
	@RequestMapping (value="tradeGo", method=RequestMethod.GET)
	public String trade() {
		System.out.println("TradeController.trade");
		return "trade/tradeGo";
	};
	
	// 1227 도서거래 - 1.도서기증
	@RequestMapping (value="donate", method=RequestMethod.GET)
	public String donateForm()	{
		System.out.println("BookController.donateForm");
		return "trade/donate";
	};
	
	@RequestMapping (value="donate", method=RequestMethod.POST)
	public String donate(@ModelAttribute TradeDTO trade, FamilyDTO family, @RequestParam("f_number") long f_number) {
	System.out.println("BookController.donate");
	ts.donate(trade);
	fs.donaPoint(f_number);
	return "redirect:/trade/tradeGo"; 
	}
	
	
	// 1228-01 도서거래 - 2.도서구매
	@RequestMapping (value="purchas", method=RequestMethod.GET)
	public String PurchasForm(Model model) {
		System.out.println("TradeController.purchasForm");
		List<TradeDTO> tradeList = ts.purList();
		model.addAttribute("tradeList", tradeList);
		return "trade/purchas";
	}
	
	// 1228-02 도서거래 - 리스트가 나오는편이 좋지않나...?
	@RequestMapping (value="purchas", method=RequestMethod.POST)
	public String Purchas(@ModelAttribute TradeDTO trade, FamilyDTO family, 
						  @RequestParam("f_number") long f_number) {
		System.out.println("TradeController.purchas");
		ts.purchas(trade);
		fs.purPoint(f_number);
		return "redirect:/trade/tradeGo";
	}
	
	// 1228-03 도서거래에서 검색기능추가
	@RequestMapping(value="search", method=RequestMethod.GET)
	public String search(Model model, @RequestParam("searchtype") String searchtype,
						@RequestParam("keyword") String keyword)	{
		System.out.println("TradeController.search");
		List<TradeDTO> tradeList = ts.search(searchtype,keyword);
		model.addAttribute("tradeList", tradeList);
		System.out.println(searchtype+keyword);
		return "trade/purchas";
	}
	
	@RequestMapping(value="/json", method = RequestMethod.GET, produces="text/plain;charset=UTF-8")
	@ResponseBody
	public String json(Locale locale, Model model) {
		String[] array = {"엽기떡볶이", "신전떡볶이", "걸작떡볶이", "신당동떡볶이"};
		Gson gson = new Gson();

	    return gson.toJson(array);
		
		
	}
	
	
	
}
