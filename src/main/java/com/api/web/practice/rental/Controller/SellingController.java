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

import com.api.web.practice.rental.Service.SellingService;
import com.api.web.practice.rental.model.Selling;

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
	

	
	//printing the data into table from the database
	@GetMapping("/SellingHouse")
	public String getAllSelling(Model model) {
		List <Selling> list= sellingservice.getAllSelling();
		model.addAttribute("SellingHouse", list);
		return "SellingHouse";
	}
	
	
	//Saving the data from the form	
	 @PostMapping("/save")
		public String addSelling(@RequestParam("img") MultipartFile imageFile,@RequestParam("UserName")String UserName,@RequestParam("Phone")String Phone,@RequestParam("Email")String Email,@RequestParam("Price")String Price,@RequestParam("Address")String Address,@RequestParam("Area")String Area, RedirectAttributes redirectAttributes) {
			 
			try{
				Selling s= new Selling();
				s.setUserName(UserName);
				s.setPrice(Price);
				s.setPhone(Phone);
				s.setEmail(Email);
				s.setArea(Area);
				s.setAddress(Address);
				sellingservice.save(s, imageFile, redirectAttributes);
			
		    redirectAttributes.addFlashAttribute("Message", "Uploaded successfully");
			}
			catch (Exception e) {
				e.printStackTrace();
				redirectAttributes.addFlashAttribute("error", "failed to uplaod the image , please try again ");
			}
			  return "redirect:/home";
		}

	
	//deleting the data from the table by id
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
	

}
