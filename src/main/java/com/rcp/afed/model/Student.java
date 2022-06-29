package com.rcp.afed.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Table(name="t_sudent_master")
@Entity
public class Student implements Serializable {

	private static final long serialVersionUID = -4080994202348920398L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="std_id")
	private Long sudentId;
	
	private String std_fname;
	
	private String std_mname;
	
	private String std_lname;
	
	private String registrationNo;
	
	private String mobile;
	
	private String email;
	
	private Date dob;
	
	private String address;
	
	@ManyToOne
	@JoinColumn(name="branch")
	private StudentBranch branch;
	
	@ManyToOne
	@JoinColumn(name="academic_Year")
	private AcademicYear academic_Year;

}
