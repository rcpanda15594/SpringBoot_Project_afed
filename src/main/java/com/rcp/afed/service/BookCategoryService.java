package com.rcp.afed.service;

import java.util.List;

import com.rcp.afed.model.BookCategory;

public interface BookCategoryService {

	boolean addNewBookCategory(BookCategory bookCategory);

	List<BookCategory> getAllBookCategoryList();

}
