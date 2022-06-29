package com.rcp.afed.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rcp.afed.model.BookCategory;

public interface BookCategoryRepository extends JpaRepository<BookCategory, Long> {

}
