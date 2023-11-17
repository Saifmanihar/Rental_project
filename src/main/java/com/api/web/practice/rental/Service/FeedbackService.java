package com.api.web.practice.rental.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.api.web.practice.rental.model.Feedback;
import com.api.web.practice.rental.respository.FeedbackRepository;

@Service
public class FeedbackService {

	@Autowired
	private FeedbackRepository feedrepo;
	
	public void addfeedback(Feedback f) {
		feedrepo.save(f);
	}

	
}
