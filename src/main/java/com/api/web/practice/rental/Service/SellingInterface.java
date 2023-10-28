package com.api.web.practice.rental.Service;

import java.util.List;

import com.api.web.practice.rental.model.Selling;

public interface SellingInterface {
	public void save(Selling s);
	public List<Selling> getAllSelling();
	public void getdeleteById(int sellid);
	public Selling editById(int id);
	
}
