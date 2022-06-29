/**
 * 
 */
package com.rcp.afed.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rcp.afed.model.LibraryCard;
import com.rcp.afed.repository.LibraryCardRepository;

/**
 * @author Ramesh
 *
 */
@Service
public class LibraryServiceImpl implements LibraryService {

	@Autowired
	private LibraryCardRepository libraryCardRepository;
	@Override
	public boolean saveLibraryCard(LibraryCard libraryCard) {

		libraryCardRepository.save(libraryCard);
		return true;
	}
	@Override
	public List<LibraryCard> getLibCardList() {
		return libraryCardRepository.findAll();
	}
	@Override
	public LibraryCard getLibCardDetailsByStudentId(Long studentId) {
		return libraryCardRepository.findLibCardById(studentId);
	}

}
