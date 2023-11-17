package com.api.web.practice.rental.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.api.web.practice.rental.Service.EditformService;
import com.api.web.practice.rental.model.Rent;
import com.api.web.practice.rental.model.Selling;

@Controller
public class EditformController {

	@Autowired
	private EditformService editformservice;
	
	
	//sel edit form
	@PostMapping("/EditForm")
	public String AddData(@ModelAttribute("edit") Selling sel) {
		editformservice.AddEditData(sel);
		ModelAndView mv = new ModelAndView("SellingHouse");
		mv.addObject("message", "SuccessFully update");
		System.out.println("Editform is here");
		
		return "redirect:/SellingHouse";
	}


}
