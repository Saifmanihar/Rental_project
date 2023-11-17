package com.api.web.practice.rental.respository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.api.web.practice.rental.model.Signin;

public interface SigninInterface extends JpaRepository<Signin, Integer> {

}
