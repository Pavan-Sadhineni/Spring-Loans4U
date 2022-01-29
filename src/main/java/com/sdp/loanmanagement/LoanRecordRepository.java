package com.sdp.loanmanagement;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface LoanRecordRepository extends CrudRepository<LoanRecord, Integer> {
   
    public LoanRecord findByEmail(String email);

	public int countByEmailAndVstatus(String email, int status);
	public int countByEmail(String email);
	public List<LoanRecord> findAllByEmail(String email);

	public LoanRecord findByLoannoid(int id);

	public List<LoanRecord> findAllByEmailAndVstatus(String email,int status);
	public long count();

	public long countByVstatus(int status);

	public int findStatusByEmail(String email);
    
}

