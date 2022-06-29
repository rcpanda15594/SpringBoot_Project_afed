package com.rcp.afed.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rcp.afed.model.Student;

public interface StudentRepository extends JpaRepository<Student, Long> {

}
