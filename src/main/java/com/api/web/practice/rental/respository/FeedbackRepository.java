package com.api.web.practice.rental.respository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.api.web.practice.rental.model.Feedback;


public interface FeedbackRepository extends JpaRepository<Feedback, Integer>{

	
}
