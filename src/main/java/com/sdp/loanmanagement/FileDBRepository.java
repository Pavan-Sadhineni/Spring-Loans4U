package com.sdp.loanmanagement;

import java.sql.Blob;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface FileDBRepository extends JpaRepository<FileDB, String> {
	 public FileDB findByEmail(String email);

	public long countByStatus(int status);

	public List<FileDB> findByStatus(int status);

	public FileDB findAadharByEmail(String email);

	public int findStatusByEmail(String email);

	
}