package com.api.web.practice.rental.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Feedback {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)

 	private int id;
	private String email;
	private String feedback;
	
	
	
	
	public Feedback() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Feedback(int id, String email, String feedback) {
		super();
		this.id = id;
		this.email = email;
		this.feedback = feedback;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	
	

}
