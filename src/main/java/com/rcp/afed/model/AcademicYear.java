package com.rcp.afed.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name="t_student_academic_year")
public class AcademicYear implements Serializable {

	private static final long serialVersionUID = 8032410541768994257L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="academic_year_id")
	private Long academic_year_id;
	
	private String academic_year;
	
	private String first_year;
	
	private String last_year;
	
	@Column(name="is_active")
	private boolean isActive;
}
