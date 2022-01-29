package com.sdp.loanmanagement;

import org.springframework.data.repository.CrudRepository;

public interface ManagerRepository extends CrudRepository<Manager, String> {
   
    public Manager findByEmail(String email);
}

