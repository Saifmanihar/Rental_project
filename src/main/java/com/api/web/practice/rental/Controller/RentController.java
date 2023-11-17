package com.api.web.practice.rental.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.api.web.practice.rental.Service.RentService;
import com.api.web.practice.rental.model.Rent;
@Controller
public class RentController {

	@Autowired private RentService rentService;
	

	@GetMapping("/RentForm")
	public String form() {
		return "RentForm";
	}
	
	
	//printing the data into table from the database
	@GetMapping("/RentingHouse")
	public String getAllRent(Model model) {
		List<Rent> list= rentService.getAllRent();
		model.addAttribute("RentingHouse", list);
		return "RentingHouse";
	}
	
	
	//Saving the data from the form	
	 @PostMapping("/Rentsave")
		public String AllRent(@RequestParam("img") MultipartFile imageFile,@RequestParam("UserName")String UserName,@RequestParam("Phone")String Phone,@RequestParam("Email")String Email,@RequestParam("Price")String Price,@RequestParam("Address")String Address,@RequestParam("Area")String Area, RedirectAttributes redirectAttributes) {
			 
			try{
				Rent r= new Rent();
				r.setUserName(UserName);
				r.setPrice(Price);
				r.setPhone(Phone);
				r.setEmail(Email);
				r.setArea(Area);
				r.setAddress(Address);
				rentService.Save(r, imageFile, redirectAttributes);
			
		    redirectAttributes.addFlashAttribute("Message", "Uploaded successfully");
			}
			catch (Exception e) {
				e.printStackTrace();
				redirectAttributes.addFlashAttribute("error", "failed to uplaod the image , please try again ");
			}
			  return "redirect:/home";
		}

	 //special(admin login)..
	
	//deleting the data from the table by id
	@GetMapping("/Delete/{id}")
	public String getDeleteById(@PathVariable("id") int rentid) {
		System.out.println("id is printed"+rentid);
		rentService.getRentDeleteById(rentid);
		  return "redirect:/RentingHouse";
	}
	//edit data by id 
	@RequestMapping("/rent/{id}")
	public String EditId(@PathVariable("id") int rentid , Model model) 
	{
		Rent Rentedit= rentService.EditRentById(rentid);
		model.addAttribute("Rentedit", Rentedit);
		return "RentEditForm";
				
	}
}
