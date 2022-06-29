package com.rcp.afed.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.rcp.afed.model.AcademicYear;
import com.rcp.afed.model.Student;
import com.rcp.afed.model.StudentBranch;
import com.rcp.afed.repository.AcademicYearRepository;
import com.rcp.afed.service.BranchService;
import com.rcp.afed.service.StudentService;

@Controller
public class StudentController {
	private static final Logger logger = LoggerFactory.getLogger(StudentController.class);
	@Autowired
	private BranchService branchService;
	@Autowired
	private AcademicYearRepository academicYearRepository;
	@Autowired
	private StudentService studentService; 
	
	@GetMapping("/addStudent.htm")
	public String addStudent(Model model){
		List<AcademicYear> finYear= academicYearRepository.findAll();
		List<StudentBranch> brnchList = branchService.getListOfBranch();
		model.addAttribute("brnchList", brnchList);
		model.addAttribute("finYear", finYear);
		return "addStudent";
		
	}

	@PostMapping("/saveStudent.htm")
	public String saveStudent(@ModelAttribute("student")Student student,RedirectAttributes attr){
		try{
			Student stdObj = studentService.studentRegistration(student);
		}catch (Exception e) {
			logger.error(e.getMessage());
		}
		return "addStudent";
	}
	
	@GetMapping("/getAllStudent.htm")
	public String viewAllStudent(Model model){
		List<Student> studentList= studentService.getAllStudentList();
		model.addAttribute("studentList", studentList);
		return "allStudent";
		
	}
	
	
	/*@GetMapping("/getStudentRepot.htm{format}")
	public String studentRepot(@PathVariable String format) throws FileNotFoundException, JRException{
		
		
		return studentService.exportReport(format);
		
	}*/
}
