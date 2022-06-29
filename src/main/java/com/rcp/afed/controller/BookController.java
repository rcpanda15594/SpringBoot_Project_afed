package com.rcp.afed.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.rcp.afed.model.BookCategory;
import com.rcp.afed.service.BookCategoryService;

@Controller
public class BookController {
	
	@Autowired
	private BookCategoryService bookService;
	
	@GetMapping("/addnewbook.htm")
	public String getAddingBook(Model model){
		List<BookCategory> catList = bookService.getAllBookCategoryList();
		model.addAttribute("catList", catList);
		return "addNewBook";
		
	}

}
