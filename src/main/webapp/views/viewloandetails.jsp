<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Veiw Customer Loan Details</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.bundle.min.js"></script>
  
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">

<meta name="viewport" content="width=device-width, initial-scale=1">
  
  
<style>
body{
    background-color:#f0f2f0;
}
.profile{
    padding: 0%;
    margin-top: 0%;
    margin-bottom: 0%;
    border-radius: 0rem;
    background: white;
    box-shadow: -4px -4px 20px rgba(0, 0, 0, 0.505);
}
.topnav {
  
  background-color: #357EC7;
 
}
.body1{
    
   
    border-radius: 0rem;
    margin-left:1.7%;
}
.body2{


    width:95%;
    margin-left:2%;

}
.topnav a {
  float: left;
  color: #f2f2f2;
  height:38.5px;
  text-align: center;
  padding: 10px 10px;
  text-decoration: none;
  font-size: 17px;
   margin-left:30px;
  margin-right:30px;
}
.nav-item a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  
}
.top{

margin-left:700px;
  
}
.topnav a:hover {
  background-color: #00BFFF;
  color: black;
}

.topnav a.active {
  background-color: ;
  color: white;
}





@media only screen and (min-width: 960px) {
  .navbar .navbar-nav .nav-item .nav-link {
    padding: 0 0.5em;
  }
  .navbar .navbar-nav .nav-item:not(:last-child) .nav-link {
    border-right: 2px solid #000000;
  }
}

.div1 {
  width: 100%;
  height: 30px;
 
  color:#357EC7;
  background-color:#b0e0e6;
}

.card {
   
}

.card {
    position: relative;
    display: flex;
    flex-direction: column;
	width:100%;
	  object-fit: fill;

    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 0 solid rgba(0,0,0,0);
    border-radius: .25rem;
}

.card-body {
    flex: 1 1 auto;
    
}

.gutters-sm {
    margin-right: -8px;
    margin-left: -8px;
}

.gutters-sm>.col, .gutters-sm>[class*=col-] {
    padding-right: 8px;
    padding-left: 8px;
}
.mb-3, .my-3 {
    margin-bottom: 1rem!important;
	
}
h4 {
  text-align: right;
}

.bg-gray-300 {
    background-color: #e2e8f0;
}
.h-100 {
    height: 100%!important;
	
	
}
.shadow-none {
    box-shadow: none!important;
}
.div3{
 margin-left:11%;
 margin-right:10%;
background-color:#c3e0e0;

}
footer {
  text-align: center;
  padding: 3px;
  background-color:#5b79a8;
  color: white;
 
}
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 0px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #c7daeb;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #bcc6cf;
  color:#2f6ba1;
}

h2 {
  font-family: 'Mr Dafoe';
  margin: 0;
  font-size: 1.2em;
  margin-top: -0.2em;
  color: #bd7731;
  text-shadow: 0 0 0.05em #fff, 0 0 0.2em #f1edf2, 0 0 0.3em #f1edf2;
  transform: rotate(-7deg);
}

</style>
</head>
<body>

<div class="container profile">
    
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#"><h2>&nbsp;&nbsp;<b>Loans4U</b></h2></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
  <div class="top">
    <ul class="navbar-nav">
    
      <li class="nav-item">
        <a class="nav-link" href="#">About loans4u</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Branches</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
      </li>
    </ul>
    </div>
  </div>
</nav>
    
   <div class="topnav">
  <a class="active" href="/admindashboard"><i class="fa fa-home"></i>Home</a>
  <a href="/customerloans"><i class='fas fa-hand-holding-usd'></i>Loans</a>
  
  <div class="w3-dropdown-hover w3-hide-small">
    <button class="w3-button" title="Notifications" style="color:white;">Customers <i class="fa fa-caret-down"></i></button>   
  
    <div class="w3-dropdown-content w3-card-4 w3-bar-block" style="background-color:#c8cbcf; width:150px;text-align:right;">
      <a href="/addconsumer" class="w3-bar-item w3-button">Add Customer</a>
      <a href="/viewcustomers" class="w3-bar-item w3-button">Customer List</a>
    </div>
    
  </div>
 
  
  
  <div class="right" style="float:right;">
  <a href="/profile"><i class="fa fa-fw fa-user"></i>Profile</a>
  
  <a href="/landing"><i class="fa fa-sign-out"></i>Logout</a>
  
  
  
  
  </div>
</div>
    <div class="div1">&nbsp;&nbsp;&nbsp;<b>&nbsp;&nbsp;&nbsp;&nbsp;Welome: <%=session.getAttribute("uname") %></b></div><hr>
      <div class="body1">  
   
   
     
     <div class="container">
    <div class="main-body">
    
         
         <center>
		 <div >
		 <br>
            <div class="col-md-8" style="border:10px solid #5e90e0 ; border-radius: 25px;" >
			<hr>
		<!--  	<img src="LOGO-loans4u.png"width="160" height="60"/>-->
			
			<b>Date of Application :</b> <%=session.getAttribute("loanreqdate") %>
			<hr>
              <div class="card mb-3"  >
                <div class="card-body">
                  <div class="row">
				  
                    <div class="col-sm-3">
                      <h6 class="mb-0">Full Name</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                    <%=session.getAttribute("cname") %>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Email</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <%=session.getAttribute("lemail") %>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Account Number</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                       <%=session.getAttribute("caccno") %>
                    </div>
                  </div>
                  <hr>
				  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">LoanId</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <%=session.getAttribute("loannoid") %>
                    </div>
                  </div>
				  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Mobile</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <%=session.getAttribute("mobileno") %>
                    </div>
                  </div>
				  <hr>
				  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Gender</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      Male
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Address</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <%=session.getAttribute("address") %>
                    </div>
                  </div>
				  <hr>
				  
                  <hr>
                  <div class="row">
                    <div class="col-sm-12">
                  
                   <a href="#"> <p>  Download link Aadhar</p></a>
                    <a href="#"> <p>  Download link Pancard</p></a>
                     <a href="#"> <p>  Download link Occupation</p></a>
                      <a href="#"> <p>  Download link Address</p></a>
                    </div>
                  </div>
                </div>
              </div>

              <div class="row gutters-sm">
                <div class="col-sm-6 mb-3">
                  <div class="card h-100">
                    <div class="card-body">
                      <h6 class="d-flex align-items-center mb-3"><i class="material-icons text-info mr-2">Personal Details :</i>user</h6>
                      <small><b>Annual Income</b>&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp; <%=session.getAttribute("annincome") %>/-</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                      <small><b>Aadhar Number</b>&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;<%=session.getAttribute("caadhar") %></small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                     <small><b>PanCard NUmber</b>&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;<%=session.getAttribute("cpan") %></small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                      <small><b>Occupation</b>&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp; <%=session.getAttribute("occupation") %></small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                     <small><b>Driving License</b>&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;N/A</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 mb-3">
                  <div class="card h-100">
                    <div class="card-body">
                      <h6 class="d-flex align-items-center mb-3"><i class="material-icons text-info mr-2">Loan Details</i>User</h6>
                      <small><b>Annual Income</b>&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp; <%=session.getAttribute("annincome") %>/-</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                      <small><b>Loan Type</b>&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp; <%=session.getAttribute("type") %></small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                     <small><b>Rate of Interest</b>&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;<%=session.getAttribute("lrate") %></small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                     <small><b>Loan Duration</b>&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;<%=session.getAttribute("lduration") %></small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                     <small><b>Amount</b>&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;N/A</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>



            </div>
          </div>
		  </div><br>
		  <a href="/manger/documentverified/<%=session.getAttribute("loannoid")%>/1"> <button type="button" class="btn btn-success" style="margin-left:20%;">Verified</button></a>
 <a href="/manger/documentverified/<%=session.getAttribute("loannoid")%>/-1"><button type="button" class="btn btn-danger" style="margin-left:19%;">Reject</button></a>
<button type="button" class="btn btn-info" onclick="window.print()" style="margin-left:15%;">Print</button>
		  <br><br>
         </center>
        </div>
    </div>
     
     </div>  
     
      <div class="body2">
             
      
     
      <div class="div3">
      <ul>
      <li>Mandatory fields are marked with an asterisk (*)</li>
       <li>Do not provide your username and password anywhere other than in this page</li>
       <li>Your username and password are highly confidential.Never part with them</li>
      </ul> 
                 
    <footer>
  <p>Loans4U<br>
  <a href="pavansadhineni22@gmail.com" style="color:white;"><i class="fa fa-envelope"></i> cutomer@loans4u.com</a></p>
  <p><i class="fa fa-phone"> : +91 8096 1394 97 </i></p>
</footer>      
    
    
    
    
    
    
              
     </div> 
          
     </div>          


<script>
function myFunction() {
  // Declare variables
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("customers");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}




function myFunction1() {
	  // Declare variables
	  var input, filter, table, tr, td, i, txtValue;
	  input = document.getElementById("myInput1");
	  filter = input.value.toUpperCase();
	  table = document.getElementById("customers");
	  tr = table.getElementsByTagName("tr");

	  // Loop through all table rows, and hide those who don't match the search query
	  for (i = 0; i < tr.length; i++) {
	    td = tr[i].getElementsByTagName("td")[1];
	    if (td) {
	      txtValue = td.textContent || td.innerText;
	      if (txtValue.toUpperCase().indexOf(filter) > -1) {
	        tr[i].style.display = "";
	      } else {
	        tr[i].style.display = "none";
	      }
	    }
	  }
	}
	
function myFunction2() {
	  // Declare variables
	  var input, filter, table, tr, td, i, txtValue;
	  input = document.getElementById("myInput2");
	  filter = input.value.toUpperCase();
	  table = document.getElementById("customers");
	  tr = table.getElementsByTagName("tr");

	  // Loop through all table rows, and hide those who don't match the search query
	  for (i = 0; i < tr.length; i++) {
	    td = tr[i].getElementsByTagName("td")[2];
	    if (td) {
	      txtValue = td.textContent || td.innerText;
	      if (txtValue.toUpperCase().indexOf(filter) > -1) {
	        tr[i].style.display = "";
	      } else {
	        tr[i].style.display = "none";
	      }
	    }
	  }
	}

function myFunction3() {
	  // Declare variables
	  var input, filter, table, tr, td, i, txtValue;
	  input = document.getElementById("myInput3");
	  filter = input.value.toUpperCase();
	  table = document.getElementById("customers");
	  tr = table.getElementsByTagName("tr");

	  // Loop through all table rows, and hide those who don't match the search query
	  for (i = 0; i < tr.length; i++) {
	    td = tr[i].getElementsByTagName("td")[5];
	    if (td) {
	      txtValue = td.textContent || td.innerText;
	      if (txtValue.toUpperCase().indexOf(filter) > -1) {
	        tr[i].style.display = "";
	      } else {
	        tr[i].style.display = "none";
	      }
	    }
	  }
	}



</script>


</body>
</html>