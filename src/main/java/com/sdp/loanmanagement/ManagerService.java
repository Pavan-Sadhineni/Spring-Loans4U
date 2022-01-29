package com.sdp.loanmanagement;

import java.sql.Blob;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class ManagerService 
{
	@Autowired
	LoanRecordRepository lrr;
  @Autowired
  ManagerRepository emprepository;
  @Autowired
   CustomerRepository cr;
  @Autowired
  FileDBRepository fd;
  Manager cu=new Manager();
  public void addcustomerrecord(Manager cu)
  {
    emprepository.save(cu);
  }
  public Manager getallemployeerecords(String email)
  {
    return  emprepository.findByEmail(email);
  }
  public int findcountstatus(String email,int status)
  {
	  return lrr.countByEmailAndVstatus(email,status);
  }
  public long findtotalLoans()
  {
	  return lrr.count();
  }
  public long findtotalrp(int status)
  {
	  return lrr.countByVstatus(status);
  }
  public long findcstatus(int status)
  {
	  return cr.countByStatus(status);
  }
  public long finddocreq(int status)
  {
	  return fd.countByStatus(status);
  }
  
  public long countcustomers()
  {
	  return cr.count();
  }
  public List<FileDB> getallfiles(int status)
  {
    return (List<FileDB>) fd.findByStatus(status);
  }
  public FileDB getallfiles1(String email)
  {
	  return fd.findAadharByEmail(email);
  }
  public void updateverificationstatus(String email,int status)
  {
	  
	  
	  FileDB f=fd.findByEmail(email);
	  f.setStatus(status);
	  fd.save(f);
	 
  }
  public List<LoanRecord> getallloans()
  {
    return (List<LoanRecord>) lrr.findAll();
  }
public LoanRecord findcustomerlaonrecord(int id) {
	
	return lrr.findByLoannoid(id);
}


public void updateloanverificationstatus(int id,int status)
{
	  
	  
	  LoanRecord lr=lrr.findByLoannoid(id);
	  lr.setVstatus(status);
	  lrr.save(lr);
	 
}
  
}