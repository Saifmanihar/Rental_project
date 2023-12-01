package com.api.web.practice.rental.Service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.api.web.practice.rental.model.Rent;
import com.api.web.practice.rental.model.Selling;
import com.api.web.practice.rental.respository.RentRepository;
import com.api.web.practice.rental.respository.SellingRepository;

@Service
public class ViewPageService {
	List<Selling> list= new ArrayList<Selling>();
	//print the data into the viewPage from the database
	
	@Autowired SellingRepository sellingrepo;
	@Autowired RentRepository rentrepo;
	
	public List<Selling> getAllData(){
		return sellingrepo.findAll();
	}
	
	public List<Rent> getRentAllData(){
		return rentrepo.findAll();
	}
}