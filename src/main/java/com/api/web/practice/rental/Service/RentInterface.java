package com.api.web.practice.rental.Service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.api.web.practice.rental.model.Rent;

public interface RentInterface {
	public void Save(Rent r,MultipartFile imageFile, RedirectAttributes redirectAttributes);
	public List<Rent> getAllRent();
	public void getRentDeleteById(int rentid);
	public Rent EditRentById(int rentid);
}
