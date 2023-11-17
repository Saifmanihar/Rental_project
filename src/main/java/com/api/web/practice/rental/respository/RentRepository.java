package com.api.web.practice.rental.respository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.api.web.practice.rental.model.Rent;

public interface RentRepository extends JpaRepository<Rent, Integer>{

	
}
