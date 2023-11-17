package com.api.web.practice.rental.respository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.api.web.practice.rental.model.Signin;
@Repository
public interface LoginRepo extends JpaRepository<Signin, Integer> {
    Signin findByEmail(String email);
}
