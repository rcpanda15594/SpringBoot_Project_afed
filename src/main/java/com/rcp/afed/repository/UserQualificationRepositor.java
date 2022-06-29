package com.rcp.afed.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rcp.afed.model.UserQualification;

public interface UserQualificationRepositor extends JpaRepository<UserQualification, Long> {

}
