package com.api.web.practice.rental.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Signin {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	
	private int id;
	private String user_name;
	private String email;
	private String phone_number;
	private String password;
	private String conform_password;
	
	
	
	
	public Signin(int id, String user_name, String email, String phone_number, String password,
			String conform_password) {
		super();
		this.id = id;
		this.user_name = user_name;
		this.email = email;
		this.phone_number = phone_number;
		this.password = password;
		this.conform_password = conform_password;
	}
	public Signin() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConform_password() {
		return conform_password;
	}
	public void setConform_password(String conform_password) {
		this.conform_password = conform_password;
	}
	

	
		
	
	
	
}
