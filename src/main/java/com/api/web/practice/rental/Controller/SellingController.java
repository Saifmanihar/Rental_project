package com.api.web.practice.rental.Controller;

import java.util.List;
//import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.api.web.practice.rental.Service.SellingService;
import com.api.web.practice.rental.model.Selling;

//@RestController
@Controller
//@RequestMapping("/SellingHouse")
public class SellingController {
	@Autowired
	private SellingService sellingservice;
	
	@GetMapping("/home")
	public String Homepage() {
		return "home";
	}
	
	@GetMapping("/Form")
	public String form() {
		return "Form";
	}
	@GetMapping("/SellingHouse")
	public String getAllSelling(Model model) {
		List <Selling> list= sellingservice.getAllSelling();
		model.addAttribute("SellingHouse", list);
		return "SellingHouse";
	}
	
	
	//Saving the data from the form
	
	@PostMapping("/save")
	public String addSelling(@ModelAttribute Selling s) {
	    sellingservice.save(s);
	    return "redirect:/home";
	}
	
	@GetMapping("/delete/{id}")
	public String getdeleteByid(@PathVariable("id") int selid) {
		System.out.println("id is printed"+selid);
		  sellingservice.getdeleteById(selid);
		  return "redirect:/SellingHouse";
	}
	//edit data by id 
	@RequestMapping("/edit/{id}")
	public String editId(@PathVariable("id") int EditId , Model model) 
	{
		Selling edit= sellingservice.editById(EditId);
		model.addAttribute("edit", edit);
		return "EditForm";
				
	}
	//Sigin page
	
	@GetMapping("Signin")
	public String Signin() {
		return "/Signin";
	}
}
