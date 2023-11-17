package com.api.web.practice.rental.respository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.api.web.practice.rental.model.Selling;

public interface SellingRepository extends JpaRepository<Selling, Integer>{

	//  @Query("SELECT s FROM Selling s WHERE LOWER(s.UserName) LIKE LOWER(CONCAT('%', :keyword, '%')) OR LOWER(s.Email) LIKE LOWER(CONCAT('%', :keyword, '%')) OR LOWER(s.Phone) LIKE LOWER(CONCAT('%', :keyword, '%')) OR LOWER(s.Area) LIKE LOWER(CONCAT('%', :keyword, '%')) OR LOWER(s.Address) LIKE LOWER(CONCAT('%', :keyword, '%')) OR LOWER(s.Price) LIKE LOWER(CONCAT('%', :keyword, '%'))")
	   // List<Selling> findByAreaContainingandPrice(@Param("keyword") String keyword);
		//List<Selling> findByArea(String area);
//	@Query("SELECT s FROM Selling s WHERE s.UserName = :userName")
//	List<Selling> findByUserName(@Param("userName") String userName);
//	
	@Query("SELECT s FROM Selling s WHERE s.Address = :address")
	List<Selling> findByAddress(@Param("address") String address);
	
	}
