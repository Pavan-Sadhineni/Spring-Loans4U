<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Landing Page</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">

<meta name="viewport" content="width=device-width, initial-scale=1">
  
  
<script>
window.onload = function() {

var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	title: {
		text: "Users Status"
	},
	data: [{
		type: "bar",
		startAngle: 240,
		yValueFormatString: "##0.00\"%\"",
		indexLabel: "{label} {y}",
		dataPoints: [
			
			{y: <%=session.getAttribute("inactive")%>, label: "Inactive"},
			{y: <%=session.getAttribute("active")%>, label: "Active"},
			
		]
	}]
});

var chart1 = new CanvasJS.Chart("chartContainer2", {
	animationEnabled: true,
	title: {
		text: "Loan Requests"
	},
	data: [{
		type: "pie",
		startAngle: 240,
		yValueFormatString: "##0.00\"%\"",
		indexLabel: "{label} {y}",
		dataPoints: [
			
			{y: <%=session.getAttribute("managerpendingrequests")%>, label: "Pending requests"},
			{y: <%=session.getAttribute("manageracceptedrequests")%>, label: "Accepted"},
			{y: <%=session.getAttribute("totalrejected")%>, label: "Rejected"},
			
		]
	}]
});

chart1.render();
chart.render();

}  
  
 </script> 
  
  
  
  
  
  
  
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
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 100%;
 
  display: inline-block;
  margin-right: 30px;
  color:black;
  
}
.card-body{

text-align:center;
background-color:#edf0ee;
width:100%;

}
.div3{

background-color:#c3e0e0;

}
footer {
  text-align: center;
  padding: 3px;
  background-color:#5b79a8;
  color: white;
  
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
    <button class="w3-button" title="Notifications" style="color:white;">Consumers <i class="fa fa-caret-down"></i></button>   
  
    <div class="w3-dropdown-content w3-card-4 w3-bar-block" style="background-color:#c8cbcf; width:150px;text-align:right;">
      <a href="/addconsumer" class="w3-bar-item w3-button">Add Consumer</a>
      <a href="/viewcustomers" class="w3-bar-item w3-button">Consumer List</a>
    </div>
    
  </div>
 
  
  
  <div class="right" style="float:right;">
  <a href="/profile"><i class="fa fa-fw fa-user"></i>Profile</a>
  
  <a href="/logout"><i class="fa fa-sign-out"></i>Logout</a>
  
  
  
  
  </div>
</div>
    <div class="div1">&nbsp;&nbsp;&nbsp;<b>&nbsp;&nbsp;&nbsp;&nbsp;Welome: <%=session.getAttribute("uname") %></b></div><hr>
      <div class="body1">  
     
     
      <div id="chartContainer" style="height: 300px; width: 50%;display: inline-block;"></div>
      
      <div id="chartContainer2" style="height: 300px; width: 40%;display: inline-block;"></div>
             <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script> 
    
  
     
     
     </div>  
      <div class="body2" style="margin-left:50px;">
             
              
              
                 
   <div class="card" style="width: 15rem;display: inline-block;padding: 0px;font-style: oblique;background-color:#b32d19;color:white;text-align:center;">
  <!--  <img class="card-img-top" src="images/housingloan.png" alt="Card image cap" width="30" height="90">--><h6><b>New Loan Requests</b></h6><i class="fa fa-bell" aria-hidden="true" style="font-size:48px;"><sup><%=session.getAttribute("totalpending") %></sup></i><br>
  <div class="card-body" style="background-color:#bee6df">
    <h5 class="card-title">${emp.loantype}</h5>
    <p class="card-text">${emp.adate}<a href="/manger/viewloanrequests"><button type="button" class="btn btn-info"><b>View Details</b></button></a>&nbsp;&nbsp; </p>
    
    
  </div>
</div>


 <div class="card" style="width: 15rem;display: inline-block;padding: 0px;font-style: oblique;background-color:#d68951;color:white;text-align:center;">
  <!--  <img class="card-img-top" src="images/housingloan.png" alt="Card image cap" width="30" height="90">--><h6><b>New Document Verification</b></h6><i class="fa fa-bell" aria-hidden="true" style="font-size:48px;"><sup><%=session.getAttribute("documentverificationrequests") %></sup></i><br>
  <div class="card-body" style="background-color:#bee6df">
    <h5 class="card-title">${emp.loantype}</h5>
    <p class="card-text">${emp.adate}<a href="/customerdocumentverification"><button type="button" class="btn btn-info"><b>View Details</b></button></a>&nbsp;&nbsp; </p>
    
    
  </div>
</div>


 <div class="card" style="width: 15rem;display: inline-block;padding: 0px;font-style: oblique;background-color:#662691;color:white;text-align:center;">
  <!--  <img class="card-img-top" src="images/housingloan.png" alt="Card image cap" width="30" height="90">--><h6><b>Total Users</b></h6><i  class="fa fa-users" aria-hidden="true" style="font-size:48px;">&nbsp;<sup><%=session.getAttribute("totalcustomers") %></sup></i><br>
  <div class="card-body" style="background-color:#bee6df">
    <h5 class="card-title">${emp.loantype}</h5>
    <p class="card-text">${emp.adate}<a href="/viewcustomers"><button type="button" class="btn btn-info"><b>View Details</b></button></a>&nbsp;&nbsp; </p>
    
    
  </div>
</div>


 <div class="card" style="width: 15rem;display: inline-block;padding: 0px;font-style: oblique;background-color:#77ba78;color:white;text-align:center;">
  <!--  <img class="card-img-top" src="images/housingloan.png" alt="Card image cap" width="30" height="90">--><h6><b>Transactions</b> </h6><i  class="fas fa-hand-holding-usd" aria-hidden="true" style="font-size:48px;">&nbsp;</i><br>
  <div class="card-body" style="background-color:#bee6df">
    <h5 class="card-title">${emp.loantype}</h5>
    <p class="card-text">${emp.adate}<a href="/viewcustomertransactions"><button type="button" class="btn btn-info"><b>View Details</b></button></a>&nbsp;&nbsp; </p>
    
    
  </div>
</div>
              
              
              
              
              
              
              
     </div> 
      <br>   
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
</body>
</html>