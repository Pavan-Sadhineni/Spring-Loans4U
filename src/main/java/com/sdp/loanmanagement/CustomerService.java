package com.sdp.loanmanagement;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;






@Service
public class CustomerService 
{
  @Autowired
  CustomerRepository emprepository;
  Customer cu=new Customer();
  @Autowired
  LoanDataRepository ldp;
  @Autowired
	EmailService emailService;
  @Autowired
  CustomerAccountRepository cusaccrepository;
  @Autowired
  private FileDBRepository fileDBRepository;
  @Autowired
  LoanRecordRepository lrr;

  CustomerAcc ca=new CustomerAcc();
  public void addcustomerrecord(Customer cu)
  {
    emprepository.save(cu);
  }
  public void addcustomeraccrecord(CustomerAcc cu)
  {
	  cusaccrepository.save(cu);
	   String body="Hello Customer Your Login Credintials are as follow: username:"+cu.getEmail()+"  Password:"+cu.getPassword();
	  emailService.sendSimpleMessage(cu.getEmail(), "Welcome To Loans4U",body);
  }
  public Customer getallemployeerecords(String email)
  {
    return  emprepository.findByEmail(email);
  }
  public CustomerAcc getallemployeerecords1(String email)
  {
    return  cusaccrepository.findByEmail(email);
  }
  public LoanData getallLoan(int id)
  {
    return  ldp.findByLoanid(id);
  }
  public List<Customer> getallemployeerecords2()
  {
    return (List<Customer>) emprepository.findAll();
  }
  public void updatecustomeracc(Customer cu)
  {
	 
//	  myCustomer.setLastlogin(lalo);
//	  myCustomer.setStatus(st);
//	  myCustomer.setLno(lno);
	  
     emprepository.save(cu);
//	  System.out.print(myCustomer.getLno());
  }
  public void deletecustomerrecord(String emp) 
  {
	  emprepository.deleteById(emp);
  }
  public void uploadfiles(FileDB fd)
  {
	  fileDBRepository.save(fd);
  }
  public FileDB alluploads(String email)
  {
    return  fileDBRepository.findByEmail(email);
  }
  public void addloanrecord(LoanRecord lr)
  {
	  lrr.save(lr);
  }
  public int findcountstatus(String email,int status)
  {
	  return lrr.countByEmailAndVstatus(email,status);
  }
  
  public FileDB finddocumentstatus(String email)
  {
	  return fileDBRepository.findByEmail(email);
  }
  
  
  public int findtotalLoans(String email)
  {
	  return lrr.countByEmail(email);
  }
  
  public List<LoanRecord> getloanallrecords(String email)
  {
    return (List<LoanRecord>) lrr.findAllByEmail(email);
  }
//  public LoanData getallLoanid(int id)
//  {
//    return  lrr.findByLoannoid(id);
//  }
  public List<LoanRecord> getcurrentloanallrecords(String email,int status)
  {
    return (List<LoanRecord>) lrr.findAllByEmailAndVstatus(email,status);
  }
  
  
}