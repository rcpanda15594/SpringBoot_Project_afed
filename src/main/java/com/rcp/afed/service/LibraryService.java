package com.rcp.afed.service;

import java.util.List;

import com.rcp.afed.model.LibraryCard;


public interface LibraryService {

	boolean saveLibraryCard(LibraryCard libraryCard);

	List<LibraryCard> getLibCardList();

	LibraryCard getLibCardDetailsByStudentId(Long studentId);

}
