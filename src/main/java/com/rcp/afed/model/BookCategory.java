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

@Getter
@Setter
@Entity
@Table(name="t_book_category")
public class BookCategory implements Serializable {

	private static final long serialVersionUID = -435741820117551637L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="cat_id")
	private Long catId;
	
	@Column(name="cat_name")
	private String CatName;
	
	@Column(name="cat_code")
	private String CatCode;
}
