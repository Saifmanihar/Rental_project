package com.api.web.practice.rental.Service;

import java.util.List;

import com.api.web.practice.rental.model.Rent;
import com.api.web.practice.rental.model.Selling;

public interface ViewPageInterFace {

	public List<Selling> getAllData();
	public List<Rent> getRentAllData();
	
}
