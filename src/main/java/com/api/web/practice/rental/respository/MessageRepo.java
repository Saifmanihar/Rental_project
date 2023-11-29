package com.api.web.practice.rental.respository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.api.web.practice.rental.model.Message;

@Repository
public interface MessageRepo extends JpaRepository<Message, Integer> {

}
