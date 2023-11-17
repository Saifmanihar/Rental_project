package com.api.web.practice.rental.Service;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.api.web.practice.rental.model.Signin;
import com.api.web.practice.rental.respository.SigninInterface;

@Service
public class SigninService {
	
	@Autowired
	private SigninInterface SignInter;
	List<Signin> list= new ArrayList<Signin>();
	
	public void savedata(Signin S) {
		SignInter.save(S);
	}
}
