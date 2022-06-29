package com.rcp.afed.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name="t_qualification")
@Getter
@Setter
public class UserQualification implements Serializable {

	private static final long serialVersionUID = 9182011416222018700L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long qualificationId;
	
	private String qualification;
}
