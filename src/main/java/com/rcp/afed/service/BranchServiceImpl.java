/**
 * 
 */
package com.rcp.afed.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rcp.afed.model.StudentBranch;
import com.rcp.afed.repository.BranchRepository;

@Service
public class BranchServiceImpl implements BranchService {

	
	@Autowired
	private BranchRepository branchRepository;
	
	@Override
	public List<StudentBranch> getListOfBranch() {
		return branchRepository.findAll();
	}

}
