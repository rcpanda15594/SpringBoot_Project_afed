package com.rcp.afed.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.rcp.afed.model.LibraryCard;

public interface LibraryCardRepository extends JpaRepository<LibraryCard, Long> {
	
	
	@Query("FROM LibraryCard where cardId =:studentId")
	LibraryCard findLibCardById(@Param("studentId")Long studentId);

}
