package com.api.web.practice.rental.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.api.web.practice.rental.Service.LoginService;
import com.api.web.practice.rental.model.Signin;

import jakarta.servlet.http.HttpSession;


@Controller

public class LoginController {
	@Autowired
	private LoginService loginService;
	@GetMapping("/Login")
	public String loginPage() {
		return "/Login";
	}
	
	 @PostMapping("/Login")
	    public String Loginuser(@RequestParam String email, @RequestParam String password, Model model) {
	        Signin user = loginService.getSignByemail(email);
	        if (user != null && user.getPassword().equals(password)) {
	            return "redirect:/home";
	        } 
	        else if ("admin@gmail.com".equals(email) && "admin123".equals(password)) {
	        	return "redirect:/SellingHouse";
			}
	        else {
	        	 model.addAttribute("error", "Password and conform_password do not match.");
	            return "redirect:/Login";
	        }
	    }
	 @GetMapping("/logout")
	    public String logout(HttpSession session) {
	        session.invalidate(); // it will logout the user using the session
	        return "redirect:/Login";
	 }
	
}
