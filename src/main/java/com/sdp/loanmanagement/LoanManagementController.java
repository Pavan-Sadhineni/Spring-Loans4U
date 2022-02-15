package com.sdp.loanmanagement;

import java.io.OutputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class LoanManagementController {
	@Autowired
    private CustomerRepository repository;
    @Autowired
    private CustomerService cusservice;
    @Autowired
    private ManagerService mservice;
    @Autowired
	EmailService emailService;
    HttpServlet httpServlet;
	
	@GetMapping("/landing")
	public ModelAndView loanding()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");

		return mv;
	}
	@GetMapping("/managerprelogin")
	public ModelAndView premanagerlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("ManagerPrelogin");

		return mv;
	}
	@GetMapping("/managerlogin")
	public ModelAndView managerlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("MnagerLogin");

		return mv;
	}
	@GetMapping("/customerlogin")
	public ModelAndView customerlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerlogin");

		return mv;
	}
	 @PostMapping("/login")
	 public ModelAndView getUser(@RequestParam("email") String username,@RequestParam("password") String password,HttpServletRequest request) {
	       
		 HttpSession session=request.getSession();
		 
	        Customer employees = cusservice.getallemployeerecords(username);
	        CustomerAcc cua=cusservice.getallemployeerecords1(username);
	        System.out.println(username+" "+password);
	       System.out.println(employees.getAadhar());
	        //System.out.println(employees.getName());
	       String uname=employees.getName();
	       
	        ModelAndView mv = new ModelAndView();
	        System.out.println(employees.getPassword1());
	       if(employees.getPassword1().equals(password))
	    	   
	       {  String body="Hello "+uname+" You are sucessfully logedIn";
	    	try {  
	       emailService.sendSimpleMessage(username, "User login sucessfull",body);
	    	   session.setAttribute("uname",uname);
		       session.setAttribute("email",employees.getEmail());
		       session.setAttribute("pan", employees.getPanno());
		       session.setAttribute("mobile",employees.getMobileno());
		       session.setAttribute("aadhar",employees.getAadhar());
		       session.setAttribute("annincome",employees.getAnnualincome());
		       session.setAttribute("location",employees.getLocation());
		       session.setAttribute("acno", employees.getAccount_no());
		       session.setAttribute("cgender", employees.getGender());
		      Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		      String st=timestamp.toString();
		      employees.setLno(employees.getLno()+1);
		      employees.setLastlogin(st);
		      employees.setStatus(1);
		      cusservice.updatecustomeracc(employees);
		       
	    	   mv.setViewName("customerhome");
	    	}
	    	catch(Exception e)
	    	{
	    		 if(employees.getPassword1().equals(password))
	    		 {
	    			 session.setAttribute("uname",uname);
	  		       session.setAttribute("email",employees.getEmail());
	  		       session.setAttribute("pan", employees.getPanno());
	  		       session.setAttribute("mobile",employees.getMobileno());
	  		       session.setAttribute("aadhar",employees.getAadhar());
	  		       session.setAttribute("annincome",employees.getAnnualincome());
	  		       session.setAttribute("location",employees.getLocation());
	  		       session.setAttribute("acno", employees.getAccount_no());
	  		       session.setAttribute("cgender", employees.getGender());
	  		      Timestamp timestamp = new Timestamp(System.currentTimeMillis());
	  		      String st=timestamp.toString();
	  		      employees.setLno(employees.getLno()+1);
	  		      employees.setLastlogin(st);
	  		      employees.setStatus(1);
	  		      cusservice.updatecustomeracc(employees);
	  		       
	  	    	   mv.setViewName("customerhome");
	    		 }
	    	}
	    	   
	       }
	       else {
	    	   session.setAttribute("invalid",-1);
	        mv.setViewName("customerlogin");
	       }
	        return mv;
	    }
	 
	 
	 @PostMapping("/mlogin")
	 public String getManager(@RequestParam("email") String username,@RequestParam("password") String password,HttpServletRequest request,HttpSession session) {
	       
		 HttpSession session1=request.getSession();
//		 
//	        Manager employees =mservice.getallemployeerecords(username);
//	        System.out.println(username+" "+password);
//	    
//	        System.out.println(employees.getName());
//	       String uname=employees.getName();
	       
	        ModelAndView mv = new ModelAndView();
//	        mv.setViewName("ManagerHome");
	       if(password=="password")
	       {    
	    	  session.setAttribute("memail", "admin@gmail.com");
	    	 
	    	  session1.setAttribute("uname","Pavan");
		       session1.setAttribute("email","manager1@gmail.com");
		       
		       session1.setAttribute("mobile","8096139497");
		     
		       
		       session1.setAttribute("location","Khammam");
		       
	    	   mv.setViewName("ManagerHome");
	    	   
	       }
	       else {
	    	   session1.setAttribute("invalid",-1);
	        mv.setViewName("MnagerLogin");
	       }
	        return "redirect:/admindashboard";
	    }
	 
	 @GetMapping("/addconsumer")
		public ModelAndView Addconsumer(HttpSession session1)
		{     
		 ModelAndView mv = new ModelAndView();
		 try {
		 Manager employees =mservice.getallemployeerecords((String) session1.getAttribute("email"));
			String email=employees.getEmail();
			mv.setViewName("addconsumer");
		 }
		 catch(Exception e){
			 mv.setViewName("unauthorised");
		 }

			return mv;
		}
	 
	 
	 @GetMapping("/profile")
		public ModelAndView customerprofile(HttpSession session)
		{   
		 ModelAndView mv = new ModelAndView();
		 
		 try {
		 Customer employees = cusservice.getallemployeerecords((String) session.getAttribute("email"));
		 String a=employees.getAadhar();
			mv.setViewName("customerprofile");
		 }
		 catch(Exception e)
		 {
			 mv.setViewName("unauthorised");
		 }

			return mv;
		}
	 @GetMapping("/customerloans")
		public ModelAndView Customerloans(HttpSession session)
		{   
		 
		    
			ModelAndView mv = new ModelAndView();
			try { Customer employees = cusservice.getallemployeerecords((String) session.getAttribute("email"));
			String a=employees.getAadhar();
			mv.setViewName("customerloans");
			
			
			}
			catch(Exception e){
				
				mv.setViewName("unauthorised");
			}

			return mv;
		}
	 
	 
	 @GetMapping("/viewcustomers")
		public ModelAndView viewallcustomers(HttpSession session1)
		{
		 ModelAndView mv=new ModelAndView();
		 try {
			 Manager employees =mservice.getallemployeerecords((String) session1.getAttribute("email"));
				String email=employees.getEmail();
			List<Customer> customers = cusservice.getallemployeerecords2();
			
			mv.setViewName("viewcustomers");
			System.out.println(customers);
			mv.addObject("cudata", customers);
		 }
		 catch(Exception e){
			 mv.setViewName("unauthorised");
		 }
			return mv;
		}
	    
	 
	   @PostMapping("/saveconsumer")
	   public String SaveConsumer(@ModelAttribute("con") Customer c,HttpSession session1)
	   {
//		   cusservice.addcustomerrecord(c);
//		   try {
		   Manager employees =mservice.getallemployeerecords((String) session1.getAttribute("email"));
			String email1=employees.getEmail();
		   String email=c.getEmail();
		   long value1=(long)((Math.random()*99999999))+1;
		   String acn="7896"+value1;
		   int value=(int)((Math.random()*999999))+1;
		   String password="Loa"+value;
		  
		  
		   c.setAccount_no(acn);
		   c.setPassword1(password);
		   c.setLno(0);
		   c.setStatus(0);
		   c.setLastlogin("No Login");
		   cusservice.addcustomerrecord(c);
		   System.out.println(c.getEmail());
		   return "redirect:/addconsumer";
//		   }
//		   catch(Exception e){
//			   return "redirect:/unauthorisedacess";
//		   }
		   }
		   
	   
	   
	   @GetMapping("/customerlogout/{email}")
		public String customerlogout(@PathVariable("email") String email,HttpSession session)
		{  
//		   HttpSession session = null;
//		    String email=(String) session.getAttribute("uname");
//		    System.out.println(email);
		   ModelAndView mv = new ModelAndView();
		   try {
		   Customer employees = cusservice.getallemployeerecords(email);
		   employees.setStatus(0);
		      cusservice.updatecustomeracc(employees);
			
			mv.setViewName("landing");
            session.removeAttribute("email");
			return "redirect:/landing";
		   }
		   catch(Exception e)
		   {
			   return "redirect:/unauthorisedacess";
		   }
		   
		}
       
	   
		@GetMapping("/customer/delete/{empid}")
		  public String deleteemployeerecord(@PathVariable("empid") String email,HttpSession session)
		  {
		    cusservice.deletecustomerrecord(email);
		      
		    return "redirect:/viewcustomers";
		  }
        @GetMapping("/customer/selectloan")
		public ModelAndView SelectLoan(HttpSession session)
		{
			ModelAndView mv = new ModelAndView();
			mv.setViewName("customerloanselection");

			return mv;
		}
        @GetMapping("customer/uploaddocuments/")
		public ModelAndView Upload(HttpSession session)
		{   
        	System.out.println(session.getAttribute("email"));
        	ModelAndView mv = new ModelAndView();
        	try {
        		
			FileDB fd=cusservice.alluploads((String) session.getAttribute("email"));
			String e=fd.getEmail();
			session.setAttribute("uploaded", 1);
			mv.setViewName("customerdocumentsupload");
        	}
        	catch(Exception e)
        	{
        		session.setAttribute("uploaded", 0);
        		mv.setViewName("customerdocumentsupload");
        	}

			return mv;
		}
        @PostMapping("/request/upload/{email}")
 	   public String Upload(@ModelAttribute("con") FileDB c,@PathVariable("email") String email)
 	   {
// 		   cusservice.addcustomerrecord(c);
 		  c.setEmail(email);
 		  c.setStatus(0);
 		  cusservice.uploadfiles(c);
 		   System.out.println(c.getEmail());
 		   return "redirect:/customer/uploaddocuments/";
 	   }
        @GetMapping("/unauthorisedacess")
		public ModelAndView unauthorised()
		{
			ModelAndView mv = new ModelAndView();
			mv.setViewName("unauthorised");

			return mv;
		}
        
        
        @GetMapping("/logout")
		public String Logout(HttpSession session1)
		{
			session1.removeAttribute((String) session1.getAttribute("email"));
            
        	return "redirect:/landing";
		}
        @PostMapping("/proceed")
        public ModelAndView Proceed(@RequestParam("Loans") int loanid,HttpSession session)
		{   
        	
        	LoanData ld=cusservice.getallLoan(loanid);
        	System.out.println(ld.getType());
         	System.out.println(loanid);
         	
         	session.setAttribute("loanid", loanid);
         	session.setAttribute("loantype",ld.getType() );
         	session.setAttribute("rate",ld.getRate());
         	session.setAttribute("duration", ld.getDuration());
			ModelAndView mv = new ModelAndView();
			mv.setViewName("verifycustomerdetailsstep1");

			return mv;
		}
        @GetMapping("/proceedstep2")
      		public ModelAndView proceedstep2(HttpSession session)
      		{
      			ModelAndView mv = new ModelAndView();
      			mv.setViewName("customeruploadstep2");

      			return mv;
      		}
        
	    @PostMapping("/request/upload/all")
	    public ModelAndView proceedstep3(@ModelAttribute("con") LoanRecord lr,HttpSession session)
	    {
	    	  long value1=(long)((Math.random()*999))+1;
	    	  lr.setLoannoid((int) value1);
	    	  lr.setAccno((String) session.getAttribute("acno"));
	    	  lr.setPanno((String) session.getAttribute("pan"));
	    	 lr.setEmail((String) session.getAttribute("email"));
	    	 lr.setMobile((String) session.getAttribute("mobile"));
	    	  lr.setName((String) session.getAttribute("uname"));
	    	  lr.setRate((double) session.getAttribute("rate"));
	    	  lr.setLoantype((String) session.getAttribute("loantype"));
	    	  lr.setLocation((String) session.getAttribute("location"));
	    	lr.setLoanid((int) session.getAttribute("loanid"));
	    	lr.setVstatus(0);
	    	lr.setLstatus(0);
	    	lr.setAadhar((String) session.getAttribute("aadhar"));
	    	lr.setIdate("N/A");
	    	lr.setDuration("N/A");
	    	lr.setDuedate("N/A");
	    	 Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		      String st=timestamp.toString();
		      lr.setAdate(st);
	    	//lr.setDuration((String) session.getAttribute("duration"));
	    	  lr.setAmountissued(1.00);
	    	cusservice.addloanrecord(lr);
	    	ModelAndView mv = new ModelAndView();
  			mv.setViewName("requestsucess");
  			return mv;
	    }
	    
	    @GetMapping("/status")
  		public ModelAndView findstatus(HttpSession session)
  		{ModelAndView mv = new ModelAndView();
	    	try {
	    	FileDB f=cusservice.finddocumentstatus((String) session.getAttribute("email"));
	    	System.out.println("Doumnet request status"+f.getStatus());
	    	List<LoanRecord> loan = cusservice.getloanallrecords((String) session.getAttribute("email"));
	    	
	    	List<LoanRecord> loan1 = cusservice.getcurrentloanallrecords((String) session.getAttribute("email"),1);
	    	List<LoanRecord> loan2 = cusservice.getcurrentloanallrecords((String) session.getAttribute("email"),-1);
	    	int total =cusservice.findtotalLoans((String) session.getAttribute("email"));
	    	int pending=cusservice.findcountstatus((String) session.getAttribute("email"), 0);
	    	int accepted=cusservice.findcountstatus((String) session.getAttribute("email"), 1);
	    	int rejected=cusservice.findcountstatus((String) session.getAttribute("email"), -1);
	    	session.setAttribute("totalloans", total);
	    	session.setAttribute("pending", pending);
	    	double pendingloanpercent=((float)(pending)/total)*100;
	    	double acceptedloanpercent=((float)(accepted)/total)*100;
	    	double rejectedloanpercent=((float)(rejected)/total)*100;
	    	session.setAttribute("pendingpercent", pendingloanpercent);
	    	session.setAttribute("acceptedpercent", acceptedloanpercent);
	    	session.setAttribute("rejectedpercent", rejectedloanpercent);
	    	session.setAttribute("documnetverification", f.getStatus());
	    	System.out.println(pendingloanpercent+"  "+total+" "+pending);
  			
  			mv.addObject("ldata", loan);
  			mv.addObject("ldata1", loan1);
  			mv.addObject("ldata2",loan2);
  			mv.setViewName("customerloanstatus");
	    	}
	    	catch(Exception e)
	    	{
	    		mv.setViewName("customerloans");
	    	}

  			return mv;
  		}
	    
	    
	    @GetMapping("/customer/viewloan/{loannoid}")
		  public ModelAndView viewloanrecord(@PathVariable("loannoid") int id,HttpSession session)
		  {
	    	LoanData ld=cusservice.getallLoan(id);
	    	ModelAndView mv = new ModelAndView();
  			mv.addObject("ldata", ld);
  			mv.setViewName("customerloanstatus");
	    	System.out.println(id);
		      
		    return mv;
		  }
	 
	    
	      @GetMapping("/admindashboard")
	      public ModelAndView admindashboard(HttpSession session)
	      {
	    	  
	    	  
	    	  
	 		 
		       
		      
		    	   
		    	  long docvreq=mservice.finddocreq(0);
		    	  long total= mservice.findtotalLoans();
		    	  System.out.println(total);
		    	  long totalrp=mservice.findtotalrp(0);
		    	  System.out.println(totalrp);
		    	  long totalar=mservice.findtotalrp(1);
		    	  long totalrr=mservice.findtotalrp(-1);
		    	  double pendingloanpercent=((float)(totalrp)/total)*100;
		    	  double acceptedloanpercent=((float)(totalar)/total)*100;
		    	  double rejectedloanpercent=((float)(totalrr)/total)*100;
		    	  double active=mservice.findcstatus(1);
		    	  double inactive=mservice.findcstatus(0);
		    	  double tt=active+inactive;
		    	  double activeusersp=((float)(active)/tt)*100;
		    	  double inactivep=((float)(inactive)/tt)*100;
		    	  long totalcustomers=mservice.countcustomers();
		    	  session.setAttribute("totalcustomers", totalcustomers);
		    	  session.setAttribute("totalpending", totalrp);
		    	  session.setAttribute("totalrejected", rejectedloanpercent);
		    	  session.setAttribute("documentverificationrequests", docvreq);
		    	  session.setAttribute("managerpendingrequests",pendingloanpercent);
		    	  session.setAttribute("manageracceptedrequests",acceptedloanpercent);
		    	  session.setAttribute("inactive",inactivep);
		    	  session.setAttribute("active",activeusersp);
		    	 
			      ModelAndView mv=new ModelAndView();
		    	   mv.setViewName("ManagerHome");
		    	   
		      
		        return mv;
	    	  
	      }
	      @GetMapping("/customerdocumentverification")
	      public ModelAndView documentsverification()
	      {   
	    	  
	    	  List<FileDB> files = mservice.getallfiles(0);
	    	  ModelAndView mv=new ModelAndView();
	    	  mv.addObject("filedata",files);
	    	  mv.setViewName("customerdocumentverification");
	    	  return mv;
	      }
	      @GetMapping("/downloadFile/{fileId}")
	      public ResponseEntity<ByteArrayResource> downloadFile(@PathVariable("fileId") String email,HttpServletResponse response)
	      {
	    	  FileDB fd=mservice.getallfiles1(email);
	    	  
	    	  return ResponseEntity.ok()
	    			  .contentType(MediaType.parseMediaType("image/pdf"))
	    			  .header(HttpHeaders.CONTENT_DISPOSITION,"attachment:filename=\""+"\"")
	    			  .body(new ByteArrayResource(fd.getAadhar()));
	    	  
	      }
	      @GetMapping("/manager/verify/{empid}/{value}")
		  public String verifyrecord(@PathVariable("empid") String email,@PathVariable("value") int status,HttpSession session)
		  {
	    	  System.out.println(status);
   	  
	    	  if(status==1) {
		    mservice.updateverificationstatus(email,1);
	    	  }
	    	  else if(status==-1) {
	    		  mservice.updateverificationstatus(email,-1);
	    	  }
	    	  else
	    	  {
	    		  System.out.println("u can comment here");
	    	  }
		      
		    return "redirect:/customerdocumentverification";
		  }
	      @GetMapping("/manger/viewloanrequests")
	      public ModelAndView viewrequests(HttpSession session)
	      {
	    	  ModelAndView mv=new ModelAndView();
	    	  mv.setViewName("Loanrequests1");
	    	  List<LoanRecord> loans = mservice.getallloans();
	    	  mv.addObject("allrecord", loans);
	    	  return mv;
	      }
	      
	      
      @GetMapping("/manger/viewcustomerloandetails/{loanid}")
	      public ModelAndView viewloandetails(HttpSession session,@PathVariable("loanid") int id)
	      {
	    	  ModelAndView mv=new ModelAndView();
	    	  mv.setViewName("viewloandetails");
	    	 LoanRecord loans = mservice.findcustomerlaonrecord(id);
	    	  session.setAttribute("loannoid", loans.getLoannoid());
	    	  session.setAttribute("loanreqdate", loans.getAdate());
	    	  session.setAttribute("caccno", loans.getAccno());
	    	  session.setAttribute("type", loans.getLoantype());
	    	  session.setAttribute("address", loans.getLocation());
	    	  session.setAttribute("annincome", loans.getAnnincome());
	    	  session.setAttribute("mobileno", loans.getMobile());
	    	  session.setAttribute("occupation", loans.getOccupation());
	    	  session.setAttribute("lemail", loans.getEmail());
	    	  session.setAttribute("cname", loans.getName());
	    	  session.setAttribute("caadhar", loans.getAadhar());
	    	  session.setAttribute("cpan", loans.getPanno());
	    	  session.setAttribute("lrate", loans.getRate());
	    	  session.setAttribute("lduration", loans.getDuration());
	    	  session.setAttribute("lemail", loans.getEmail());
	    	  session.setAttribute("cname", loans.getName());
	    	 
	    	  mv.addObject("allrecord", loans);
	    	  return mv;
	      }
      @GetMapping("/manger/documentverified/{loanid}/{status}")
      public String documnetverified(@PathVariable("loanid") int id,@PathVariable("status") int status)
      {
    	  LoanRecord loans = mservice.findcustomerlaonrecord(id);
//    	  loans.setVstatus(1);
    	  mservice.updateloanverificationstatus(id, status);
    	  return "redirect:/manger/viewloanrequests";
      }
      @GetMapping("/viewcustomertransactions")
      public ModelAndView viewtransactions()
      {
    	  ModelAndView mv=new ModelAndView();
    	  mv.setViewName("viewcustomertransactions");
    	  return mv;
      }
      @GetMapping("/transactionvisualisation")
      public ModelAndView viewtransactionsanalytics()
      {
    	  ModelAndView mv=new ModelAndView();
    	  mv.setViewName("managertransactionsanalytics");
    	  return mv;
      }
      @GetMapping("/changepassword")
      public ModelAndView customerchangepassword()
      {
    	  ModelAndView mv=new ModelAndView();
    	  mv.setViewName("changepassword");
    	  return mv;
      }
      @GetMapping("/loanapproval/{loanid}")
      public ModelAndView loanapproval(@PathVariable("loanid") int id,HttpSession session)
      {
    	  
    	  LoanRecord loans = mservice.findcustomerlaonrecord(id);
    	  session.setAttribute("cloannoid", loans.getLoannoid());
    	  session.setAttribute("llstatus",loans.getVstatus());
    	  if(loans.getVstatus()==1)
    	  {
    		  session.setAttribute("cibil",750);
    	  }
    	  else if(loans.getVstatus()==-1)
    	  {
    		  session.setAttribute("cibil",300);
    	  }
    	  session.setAttribute("cloanreqdate", loans.getAdate());
    	  session.setAttribute("ccaccno", loans.getAccno());
    	  session.setAttribute("ctype", loans.getLoantype());
    	  session.setAttribute("caddress", loans.getLocation());
    	  session.setAttribute("cannincome", loans.getAnnincome());
    	  session.setAttribute("cmobileno", loans.getMobile());
    	  session.setAttribute("coccupation", loans.getOccupation());
    	  session.setAttribute("clemail", loans.getEmail());
    	  session.setAttribute("ccname", loans.getName());
    	  session.setAttribute("ccaadhar", loans.getAadhar());
    	  session.setAttribute("ccpan", loans.getPanno());
    	  session.setAttribute("clrate", loans.getRate());
    	  session.setAttribute("clduration", loans.getDuration());
    	  session.setAttribute("clemail", loans.getEmail());
    	  session.setAttribute("ccname", loans.getName());
    	 
    	  ModelAndView mv=new ModelAndView();
    	  mv.setViewName("loanapprovalstatus");
    	  return mv;
      }
      @GetMapping("/emicalci")
      public ModelAndView emi()
      {
    	  ModelAndView mv=new ModelAndView();
    	  mv.setViewName("emical");
    	  return mv;
      }
	 
	 
	 
   
}
