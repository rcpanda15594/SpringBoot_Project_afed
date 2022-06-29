/**
 * 
 */
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

/**
 * @author Ramesh
 *
 */
@Entity
@Setter
@Getter
@Table(name="t_lib_staff_designation")
public class LibraryStaffDesignation implements Serializable {

	private static final long serialVersionUID = -1676835710238468507L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="desig_id")
	private Long libDesig_id;
	
	private String designation;
	
}
