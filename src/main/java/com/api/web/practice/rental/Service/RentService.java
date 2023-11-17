package com.api.web.practice.rental.Service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.api.web.practice.rental.model.Rent;
import com.api.web.practice.rental.model.Selling;
import com.api.web.practice.rental.respository.RentRepository;

@Service
public class RentService {

	@Autowired private RentRepository RentRepo;
	
	List<Rent> list= new ArrayList<Rent>();

	//save method to save the data..!!
		public void Save(Rent r,MultipartFile imageFile, RedirectAttributes redirectAttributes) {
			try {
				byte[] img= imageFile.getBytes();
				r.setImg(img);
				RentRepo.save(r);
				redirectAttributes.addFlashAttribute(null, redirectAttributes);
				}
				catch (IOException e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			
		}
		
		public List<Rent> getAllRent(){
			return RentRepo.findAll();
		}

		//delete by Id
		public void getRentDeleteById(int rentid) {
			RentRepo.deleteById(rentid);
		}

		//edit by id 
		
		public Rent EditRentById(int rentid) {
			return RentRepo.findById(rentid).get();
		}


}
