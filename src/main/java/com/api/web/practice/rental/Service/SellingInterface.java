package com.api.web.practice.rental.Service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.api.web.practice.rental.model.Selling;

public interface SellingInterface {
	
	public List<Selling> getAllSelling();
	public void getdeleteById(int sellid);
	public Selling editById(int EditId);
	void save(Selling s, MultipartFile imageFile, RedirectAttributes redirectAttributes);
//	List<Selling> searchByKeyword(String keyword);
}
