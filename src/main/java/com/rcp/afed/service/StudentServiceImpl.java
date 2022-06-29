package com.rcp.afed.service;

import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rcp.afed.model.Student;
import com.rcp.afed.repository.StudentRepository;
import com.rcp.afed.utils.GenerateUniqueCode;

@Service
public class StudentServiceImpl implements StudentService {

	private static final Logger logger = LoggerFactory.getLogger(StudentServiceImpl.class);
	@Autowired
	private StudentRepository studentRepository;

	@Override
	public Student studentRegistration(Student student) {
		Student stdVal = null;
		try {
			student.setDob(new Date());
			String regNoFormat = GenerateUniqueCode.getGeneratedCodeForSP(student.getBranch().getBranch());
			stdVal = studentRepository.save(student);
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return stdVal;
	}

	@Override
	public List<Student> getAllStudentList() {
		return studentRepository.findAll();
	}

	/*public String exportReport(String reportFormat) throws FileNotFoundException, JRException {

		List<Student> stdList = studentRepository.findAll();

		// Load file and compile it
		File file = ResourceUtils.getFile("classpath:students.jrxml");

		JasperReport jasperReport = JasperCompileManager.compileReport(file.getAbsolutePath());
		JRBeanCollectionDataSource dataSource = new JRBeanCollectionDataSource(stdList);

		Map<String, Object> parameter = new HashMap<>();
		parameter.put("createdBy", "Ramesh");
		JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, parameter, dataSource);
		
		if(reportFormat.equalsIgnoreCase("pdf")){
			JasperExportManager.exportReportToPdfFile("C:\\Users\\Ramesh\\Desktop"+"\\student.pdf");
		}
		return "Repot generated";
	}*/

}
