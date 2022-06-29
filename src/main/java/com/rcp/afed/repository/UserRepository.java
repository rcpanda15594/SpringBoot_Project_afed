package com.rcp.afed.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rcp.afed.model.User;


public interface UserRepository extends JpaRepository<User, Long>{

	User findByUserName(String username);
	
}
