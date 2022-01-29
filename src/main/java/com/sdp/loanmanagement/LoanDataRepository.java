package com.sdp.loanmanagement;

import org.springframework.data.repository.CrudRepository;

public interface LoanDataRepository extends CrudRepository<LoanData, String> {
   
	public LoanData findByLoanid(int type);
	
	

	

	
}

