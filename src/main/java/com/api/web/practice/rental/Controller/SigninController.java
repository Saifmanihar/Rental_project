package com.api.web.practice.rental.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestParam;


import com.api.web.practice.rental.Service.SigninService;
import com.api.web.practice.rental.model.Signin;

@Controller
public class SigninController {
	
	@Autowired 
	private SigninService SignService;
	@GetMapping("/Signin")
	public String Signpage() {
		return "/Signin";
	}
	
	
	@PostMapping("/Save")
	public String SaveData(@ModelAttribute Signin S, @RequestParam String password, @RequestParam String conform_password, Model model) {
	    if (password.equals(conform_password)) {
	        SignService.savedata(S);
	        return "redirect:/home";
	    } else {
	        model.addAttribute("error", "Password and conform_password do not match.");
	        return "Signin"; // This should be the name of your JSP file
	    }
	}

}
