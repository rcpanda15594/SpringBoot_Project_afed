package com.rcp.afed.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rcp.afed.model.BookCategory;
import com.rcp.afed.repository.BookCategoryRepository;

@Service
public class BookCategoryServiceImpl implements BookCategoryService {

	@Autowired
	private BookCategoryRepository bookCategoryRepository;

	@Override
	public boolean addNewBookCategory(BookCategory bookCategory) {
		Boolean retObj = false;
		try {
			bookCategoryRepository.save(bookCategory);
			retObj = true;
		} catch (Exception e) {
			retObj = false;
		}
		return retObj;
	}

	@Override
	public List<BookCategory> getAllBookCategoryList() {
		List<BookCategory> catList = new ArrayList<>();
		try {
			catList = bookCategoryRepository.findAll();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return catList;
	}

}
