package com.rcp.afed.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name="t_branch")
public class StudentBranch implements Serializable {

	private static final long serialVersionUID = -4604959022525682915L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long branchId;
	
	private String branch;
	
	private int streangth;
}
