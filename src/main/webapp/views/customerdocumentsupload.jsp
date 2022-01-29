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
      <p style="text-align:center;">***** Hello <%=session.getAttribute("uname") %> you are requested to upload your required documents here... *****</p>
     <%int a=(int)session.getAttribute("uploaded");  %>
    <% if(a==1){ %>
    <h5 style="background-color:green;color:white;text-align:center;">Your Documents are uploaded sucessfully your request for verification is still in progress.....</h5><%} %>
     
     </div>  
      <div class="body2"> &nbsp;&nbsp;
          <div class="center4">
             
        <form action="/request/upload/<%=session.getAttribute("email")%>" method="post" ModelAttribute="con">
        <label for="aadhar" class="col-sm-5"><b>Aadhar Document*</b>  </label><input class="col-sm-6" type="file" id="aadhar" name="aadhar"><br><br>
       	<label for="pan" class="col-sm-5"><b>PAN Card*</b> </label><input type="file" id="pan" name="pancard" class="col-sm-7"><br><br>
        <label for="income" class="col-sm-5"><b>Income Certificate*</b></label><input type="file" id="income" name="income" class="col-sm-7"><br><br>
           <label for="address" class="col-sm-5"><b>Address Proof*</b> </label><input type="file" id="address" name="address" class="col-sm-7"><br><br>
          <label for="occupation" class="col-sm-5"><b>Current Occupation*</b> </label><input type="file" id="aadhar" name="occupation" class="col-sm-7"><br><br>
   <div class="center4">
  <input type="submit" value="Request For Verification" class="btn btn-info"></div>
</form>
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