package com.api.web.practice.rental.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.api.web.practice.rental.model.Rent;
import com.api.web.practice.rental.respository.RentRepository;

@Service
public class RentEditService {

	@Autowired
	private RentRepository rentRepository;
	
	public void RentEditData(Rent rent) {
		rentRepository.save(rent);
	}
	
}
