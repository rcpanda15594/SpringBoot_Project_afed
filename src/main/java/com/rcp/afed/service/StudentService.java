package com.rcp.afed.service;

import java.util.List;

import com.rcp.afed.model.Student;

public interface StudentService {

	Student studentRegistration(Student student);

	List<Student> getAllStudentList();

	//String exportReport(String format) throws FileNotFoundException, JRException;

}
