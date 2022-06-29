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
@Table(name="t_lib_staff")
public class LibraryStaff implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6656422443553942168L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="staff_id")
	private Long libStaff_Id;
	
	private String fName;
	
	private String lName;
	
	private String dob;
	
	private String mobile;
	
	private String email;

	private String address;
}
