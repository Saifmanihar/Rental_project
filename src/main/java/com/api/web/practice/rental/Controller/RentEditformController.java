package com.api.web.practice.rental.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.api.web.practice.rental.Service.RentEditService;
import com.api.web.practice.rental.model.Rent;

@Controller
public class RentEditformController {
	@Autowired
	private RentEditService editService;
	//sel edit form
		@PostMapping("/RentSave")
		public String RentAddData(@ModelAttribute("Rentedit") Rent rent) {
			editService.RentEditData(rent);
			System.out.println("Editform is here");
			return "redirect:/RentingHouse";
		}
}
