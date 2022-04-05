package com.one.springpj.service;

import java.util.List;

import com.one.springpj.model.Branch;
import com.one.springpj.model.User;

public interface BranchService {
	
	public void insert(Branch branch);

	List<Branch> branchList();

	public void delete(Long id);

	Branch findById(Long id);

	void update(Branch branch);
	
	public Branch findByManager(User user);

}
