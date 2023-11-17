package com.api.web.practice.rental.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.api.web.practice.rental.Service.ViewPageService;
import com.api.web.practice.rental.model.Rent;
import com.api.web.practice.rental.model.Selling;

@Controller
public class viewPageController {

	@Autowired ViewPageService viewService;
	@GetMapping("/view")
	public String ViewPage() {
		return "/viewPage";
	}
	
	@GetMapping("/SellviewPage")
	public String getAlldata(Model model) {
		List<Selling> list= viewService.getAllData();
		model.addAttribute("SellviewPage", list);
		return "/SellviewPage";
	}
	
	
	//rent view page starts from here
	@GetMapping("/Rentview")
	public String RentviewPage() {
		return "/viewPage";
	}
	
	@GetMapping("/RentviewPage")
	public String getAllRentdata(Model model) {
		List<Rent> list= viewService.getRentAllData();
		model.addAttribute("RentviewPage", list);
		return "/RentviewPage";
	}
}
