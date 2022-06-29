package com.rcp.afed.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rcp.afed.model.StudentBranch;

public interface BranchRepository extends JpaRepository<StudentBranch, Long> {

}
