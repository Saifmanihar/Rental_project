package com.api.web.practice.rental.model;

import java.util.Base64;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Selling {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String UserName;
	private String Phone;
	private String Email;
	private String Price;
	private String Address;
	private String Area;
	private byte[] img;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return UserName;
	}

	public void setUserName(String userName) {
		UserName = userName;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPrice() {
		return Price;
	}
	public void setPrice(String price) {
		Price = price;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}
	public String getArea() {
		return Area;
	}
	public void setArea(String area) {
		Area = area;
	}

	public byte[] getImg() {
		return img;
	}


	public void setImg(byte[] img) {
		this.img = img;
	}

	public Selling(int id, String userName, String phone, String email, String price, String address, String area,
			byte[] img) {
		super();
		this.id = id;
		UserName = userName;
		Phone = phone;
		Email = email;
		Price = price;
		Address = address;
		Area = area;
		this.img = img;
	}




	public Selling() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	  public String getImgBase64() {
	        if (img != null && img.length > 0) {
	            return Base64.getEncoder().encodeToString(img);
	        }
	        return "";
	    }
				
	
}
