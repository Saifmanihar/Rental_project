package com.api.web.practice.rental.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.api.web.practice.rental.Service.FeedbackService;
import com.api.web.practice.rental.model.Feedback;

@Controller
public class FeedbackController {

	@Autowired private FeedbackService feedbackService;
	
	@PostMapping("/send")
	public String addFeed(@ModelAttribute("feed") Feedback f, Model model) {
	feedbackService.addfeedback(f);
	model.addAttribute("Message", "Successfully send the feedback!!");
	return "redirect:/home";
	}
}
