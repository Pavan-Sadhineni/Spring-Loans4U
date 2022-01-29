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
  
 
  
  <script>
  window.watsonAssistantChatOptions = {
      integrationID: "8587cbeb-1d7e-4570-a706-815e5e1c4ca8", // The ID of this integration.
      region: "eu-gb", // The region your integration is hosted in.
      serviceInstanceID: "9e63f9bd-b8df-4668-8600-f7caea08ec0d", // The ID of your service instance.
      onLoad: function(instance) { instance.render(); }
    };
  setTimeout(function(){
    const t=document.createElement('script');
    t.src="https://web-chat.global.assistant.watson.appdomain.cloud/versions/" + (window.watsonAssistantChatOptions.clientVersion || 'latest') + "/WatsonAssistantChatEntry.js"
    document.head.appendChild(t);
  });
</script>
  
  <script>
window.onload = function() {

var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	title: {
		text: "Your Loan Applications Analytics"
	},
	data: [{
		type: "pie",
		startAngle: 240,
		yValueFormatString: "##0.00\"%\"",
		indexLabel: "{label} {y}",
		dataPoints: [
			
			{y: <%=session.getAttribute("pendingpercent")%>, label: "Pending requests"},
			{y: <%=session.getAttribute("acceptedpercent")%>, label: "Accepted"},
			{y: <%=session.getAttribute("rejectedpercent")%>, label: "Rejected"},
			
		]
	}]
});

var chart1 = new CanvasJS.Chart("chartContainer2", {
	animationEnabled: true,
	title: {
		text: "Your Loan Applications Analytics"
	},
	data: [{
		type: "line",
		startAngle: 240,
		yValueFormatString: "##0.00\"%\"",
		indexLabel: "{label} {y}",
		dataPoints: [
			
			{y: <%=session.getAttribute("pendingpercent")%>, label: "Pending requests"},
			{y: <%=session.getAttribute("acceptedpercent")%>, label: "accepted"},
			{y: <%=session.getAttribute("rejectedpercent")%>, label: "Rejected"},
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
  overflow: hidden;
  background-color: #357EC7;
}
.body1{
    
   
    border-radius: 0rem;
    margin-left:1.7%;
    margin-right:1%;
}
.body2{


    width:95%;
    margin-left:2%;

}
.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 10px 12px;
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
   box-shadow: 0 4px 8px 0 rgba(0.3,0,0,0.5);
  transition: 0.3s;
  width: 100%;
 

 
  color:black;
   display: block;
  
  
}
.card-body{

text-align:center;
background-color:#edf0ee;

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

.center4 {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 50%;
}
.mn{
color:red;

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
  <a class="active" href="/landing">Home</a>
  <a href="/customerloans"><i class='fas fa-hand-holding-usd'></i>Loans</a>
  <div class="right" style="float:right;">
  <a href="/profile"><i class="fa fa-fw fa-user"></i>Profile</a>
  
  <a href="/customerlogout/<%=session.getAttribute("email")%>"><i class="fa fa-sign-out"></i>Logout</a>
  </div>
</div>
    <div class="div1">&nbsp;&nbsp;&nbsp;<b>Welome: <%=session.getAttribute("uname") %></b></div><hr>
      <div class="body1"> 
      <div id="chartContainer" style="height: 300px; width: 50%;display: inline-block;"></div>
     
         <div id="chartContainer2" style="height: 300px; width: 40%;display: inline-block;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script> 
    
       <h5 style=" font-style: oblique;">Applied Loans</h5><hr style="height:4px;border-width:0;color:gray;background-color:#abbedb;border-radius: 10px;">
      <!--    <div class="card" style="width: 16rem;">
  <img class="card-img-top" src="images/housingloan.png" alt="Card image cap" width="30" height="90">
  <div class="card-body">
    <h5 class="card-title">HOME LOAN</h5>
    <p class="card-text"></p>
    
  </div>
</div>-->
  
  
  <c:forEach var="emp" items="${ldata}">
  
  
   <div class="card" style="width: 17rem;display: inline-block;padding: 7px;font-style: oblique;">
  <img class="card-img-top" src="images/housingloan.png" alt="Card image cap" width="30" height="90">
  <div class="card-body">
    <h5 class="card-title">${emp.loantype}</h5>
    <p class="card-text">${emp.adate}<a href="/customer/viewloan/${emp.loannoid}"><button type="button" class="btn btn-info"><b>Details</b></button></a></p>
    
    
  </div>
</div>
           <!--   <tr>
                <td>${emp.name}</td>
                <td>${emp.email}</td>
                <td>${emp.accno}</td>
               
               
                
               <td><a  href="/customer/delete/${emp.email}" ><i class="fa fa-info-circle" style="color:#4ea3f2" aria-hidden="true"></i>&nbsp;<i class="fas fa-save"></i>
               &nbsp;<i class="fa fa-pencil-square-o" style="color:#2f6ba1;" aria-hidden="true"></i>&nbsp;<i class="fa fa-trash" style="color:red;"></i></a></td>
            </tr>-->
        </c:forEach>


<br>

       <br>
       <h5 style=" font-style: oblique;">Current Loans</h5><hr style="height:4px;border-width:0;color:gray;background-color:#abbedb;border-radius: 10px;">
        
        <c:forEach var="emp" items="${ldata1}">
  
  
   <div class="card" style="width: 17rem;display: inline-block;padding: 7px;font-style: oblique;">
  <img class="card-img-top" src="images/housingloan.png" alt="Card image cap" width="30" height="90">
  <div class="card-body">
    <h5 class="card-title">${emp.loantype}</h5>
    <p class="card-text">${emp.adate}<a href="/loanapproval/${emp.loannoid}"><button type="button" class="btn btn-info"><b>Details</b></button></a></p>
    
    
  </div>
</div>
           <!--   <tr>
                <td>${emp.name}</td>
                <td>${emp.email}</td>
                <td>${emp.accno}</td>
               
               
                
               <td><a  href="/customer/delete/${emp.email}" ><i class="fa fa-info-circle" style="color:#4ea3f2" aria-hidden="true"></i>&nbsp;<i class="fas fa-save"></i>
               &nbsp;<i class="fa fa-pencil-square-o" style="color:#2f6ba1;" aria-hidden="true"></i>&nbsp;<i class="fa fa-trash" style="color:red;"></i></a></td>
            </tr>-->
        </c:forEach>
        
        
         <br><br>
        <h5 style=" font-style: oblique;">Rejected '&' On Hold Loans</h5><hr style="height:4px;border-width:0;color:gray;background-color:#abbedb;border-radius: 10px;">
       
       
       
       <c:forEach var="emp" items="${ldata2}">
  
  
   <div class="card" style="width: 17rem;display: inline-block;padding: 7px;font-style: oblique;">
  <img class="card-img-top" src="images/housingloan.png" alt="Card image cap" width="30" height="90">
  <div class="card-body" style="background-color:#bd1913;color:white;">
    <h5 class="card-title">${emp.loantype}</h5>
    <p class="card-text">${emp.adate}<a href="/loanapproval/${emp.loannoid}"><button type="button" class="btn btn-info"><b>Details</b></button></a>&nbsp;&nbsp; <i class="fa fa-clock-o" style="font-size: 30px;color:#eba967;"></i> </p>
    
    
  </div>
</div>

















           <!--   <tr>
                <td>${emp.name}</td>
                <td>${emp.email}</td>
                <td>${emp.accno}</td>
               
               
                
               <td><a  href="/customer/delete/${emp.email}" ><i class="fa fa-info-circle" style="color:#4ea3f2" aria-hidden="true"></i>&nbsp;<i class="fas fa-save"></i>
               &nbsp;<i class="fa fa-pencil-square-o" style="color:#2f6ba1;" aria-hidden="true"></i>&nbsp;<i class="fa fa-trash" style="color:red;"></i></a></td>
            </tr>-->
        </c:forEach>
         
       
     
     
      <br><br>
        <h5 style=" font-style: oblique;">Document Verification</h5><hr style="height:4px;border-width:0;color:gray;background-color:#abbedb;border-radius: 10px;">
       
      <div class="card" style="width: 17rem;display: inline-block;padding: 7px;font-style: oblique;">
  <img class="card-img-top" src="https://veratad.com/wp-content/uploads/2020/07/solutions-ico21.svg" alt="Card image cap" width="30" height="90">
<%int a=(Integer)session.getAttribute("documnetverification"); %>
   <%if(a==1){ %>
  <div class="card-body" style="background-color:#3ab818;">
    <h5 class="card-title">${emp.loantype}</h5>
    <p class="card-text">${emp.adate}<h4 style="color:white;display:inline-block;"><b>Verified</b></h4>&nbsp;&nbsp; <i class="fa fa-check-circle" style="font-size: 30px;color:white;display:inline-block;"></i></p>
    <%}
   else if(a==-1){%>
	   
	  <div class="card-body" style="background-color:#d6440f;">
    <h5 class="card-title">${emp.loantype}</h5>
    <p class="card-text">${emp.adate}<h4 style="color:white;display:inline-block;"><b>Rejected</b></h4>&nbsp;&nbsp; <i class="fa fa-times-circle-o" style="font-size: 30px;color:white;display:inline-block;"></i></p>
     
	   
	   
 <%   }
   else{ %>
     <div class="card-body" style="background-color:#e69239;">
    <h5 class="card-title">${emp.loantype}</h5>
    <p class="card-text">${emp.adate}<h4 style="color:white;display:inline-block;"><b>Pending</b></h4>&nbsp;&nbsp; <i class="fas fa-spinner fa-pulse" style="font-size: 30px;color:white;display:inline-block;"></i></p>
    <%} %>
    
  </div>
</div>
     
     
     
     
     
     </div>  
     
     <br><br>
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