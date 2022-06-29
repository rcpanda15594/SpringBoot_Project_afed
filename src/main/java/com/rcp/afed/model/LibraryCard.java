package com.rcp.afed.model;

import java.io.Serializable;

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
@Entity
@Table(name="t_library_card")
public class LibraryCard implements Serializable {

	private static final long serialVersionUID = -3464386904022638157L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="card_id")
	private Long cardId;
	
	@Column(name="card_code")
	private String cardCode;
	
	private String std_fname;
	
	private String std_mname;
	
	private String std_lname;
	
	private String registrationNo;
	
	@ManyToOne
	@JoinColumn(name="branch")
	private StudentBranch branch;
}
