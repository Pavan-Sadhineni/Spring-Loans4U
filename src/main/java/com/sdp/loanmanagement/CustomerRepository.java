package com.sdp.loanmanagement;

import org.springframework.data.repository.CrudRepository;

public interface CustomerRepository extends CrudRepository<Customer, String> {
   
    public Customer findByEmail(String email);

	public long countByStatus(int status);
    
}

