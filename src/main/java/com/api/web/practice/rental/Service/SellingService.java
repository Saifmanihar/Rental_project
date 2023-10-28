package com.api.web.practice.rental.Service;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.api.web.practice.rental.model.Selling;
import com.api.web.practice.rental.respository.SellingRepository;

@Service
public class SellingService implements SellingInterface {

	@Autowired
	private SellingRepository sellingrepository;
	List<Selling> list= new ArrayList<Selling>();
	//save method to save the data..!!
	public void save(Selling s) {
		sellingrepository.save(s);
	}
	
	public List<Selling> getAllSelling(){
		return sellingrepository.findAll();
	}
	
	

	//delete by Id
	public void getdeleteById(int sellid) {
		sellingrepository.deleteById(sellid);
	}

	@Override
	public Selling editById(int EditId) {
		return sellingrepository.findById(EditId).get();
	}

	//edit by id 
	


	
}
