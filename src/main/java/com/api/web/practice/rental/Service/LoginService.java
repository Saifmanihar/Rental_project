package com.api.web.practice.rental.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.api.web.practice.rental.model.Signin;
import com.api.web.practice.rental.respository.LoginRepo;

@Service

public class LoginService {

	@Autowired
	private LoginRepo loginRepo;
	public Signin getSignByemail(String email) {
		return loginRepo.findByEmail(email);
	}
	
}
