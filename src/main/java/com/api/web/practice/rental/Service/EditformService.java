package com.api.web.practice.rental.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.api.web.practice.rental.model.Rent;
import com.api.web.practice.rental.model.Selling;
import com.api.web.practice.rental.respository.RentRepository;
import com.api.web.practice.rental.respository.SellingRepository;

@Service
public class EditformService {

	@Autowired
	private SellingRepository sellingrepo;
	
	@Autowired
	private RentRepository rentRepository;
	
	public void AddEditData(Selling sel) {
		sellingrepo.save(sel);
	}
	
	
}
