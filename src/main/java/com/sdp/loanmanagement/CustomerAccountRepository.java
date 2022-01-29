package com.sdp.loanmanagement;

import org.springframework.data.repository.CrudRepository;

public interface CustomerAccountRepository extends CrudRepository<CustomerAcc, String> {
   
    public CustomerAcc findByEmail(String email);
}

