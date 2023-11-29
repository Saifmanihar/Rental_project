package com.api.web.practice.rental.respository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.api.web.practice.rental.model.Selling;
import com.api.web.practice.rental.model.Signin;

public interface SellingRepository extends JpaRepository<Selling, Integer>{


	}
