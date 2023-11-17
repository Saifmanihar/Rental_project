package com.api.web.practice.rental.Controller;

import java.util.List;

//import org.hibernate.mapping.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.api.web.practice.rental.model.Selling;
import com.api.web.practice.rental.respository.SellingRepository;

@RestController
public class SearchController {
	@Autowired 
	private SellingRepository sellingrepo;
	

	//search-bar
	@GetMapping("/search/{query}")
	public ResponseEntity<?> Search(@PathVariable("query") String query){
		List<Selling> result= this.sellingrepo.findByAddress(query);
		return ResponseEntity.ok(result);
	}

}
