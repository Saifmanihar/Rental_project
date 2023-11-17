package com.api.web.practice.rental.Service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.api.web.practice.rental.model.Selling;
import com.api.web.practice.rental.respository.SellingRepository;

@Service
public class SellingService implements SellingInterface {

	@Autowired
	private SellingRepository sellingrepository;
	List<Selling> list= new ArrayList<Selling>();
	//save method to save the data..!!
	@Override
	public void  save(Selling s,MultipartFile imageFile, RedirectAttributes redirectAttributes) {
		try {
			byte[] img= imageFile.getBytes();
			s.setImg(img);
			sellingrepository.save(s);
			redirectAttributes.addFlashAttribute(null, redirectAttributes);
			}
			catch (IOException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		
	}

	
	public List<Selling> getAllSelling(){
		return sellingrepository.findAll();
	}

	//delete by Id
	public void getdeleteById(int sellid) {
		sellingrepository.deleteById(sellid);
	}

	//edit by id 
	@Override
	public Selling editById(int EditId) {
		return sellingrepository.findById(EditId).get();
	}

	

	
}
