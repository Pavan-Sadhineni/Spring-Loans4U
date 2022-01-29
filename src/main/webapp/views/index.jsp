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
<style>
body{
    background-color:#f0f2f0;
}
.profile{
    padding: 0%;
    margin-top: 0%;
    margin-bottom: 0%;
    border-radius: 0rem;
    background: #e4e3e6;
    box-shadow: -4px -4px 20px rgba(0, 0, 0, 0.505);
}
.topnav {
  overflow: hidden;
  background-color: #357EC7;
}
.body1{
     padding: 3%;
    margin-top: 1.5%;
   
    border-radius: 0rem;
    background-image: url("https://wallpaperaccess.com/full/4105994.jpg");
    background-repeat: no-repeat;
    background-size: cover;
    width:97%;
    margin-left:1.7%;
}
.body2{


    width:97%;
    margin-left:4%;

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
  border: 1px solid blue;
  text-align:center;
  background-color:#cae4eb;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 100%;
  border-radius:15px;
  display: inline-block;
  margin-right: 30px;
  color:black;
  
}
.card-body{

text-align:center;

}

footer {
  text-align: center;
  padding: 3px;
  background-color:#5b79a8;
  color: white;
  
}



.column {
  float: left;
  width: 33.33%;
  padding: 0px;
}
.column2 {
  float: right;
  margin-right:5px;
  padding:0 0px 0 0;
  
 
}


.row::after {
  content: "";
  clear: both;
  display: table;
  width:100%;
}

table, th, td {
  
  border-collapse: collapse;
 
  

   color:black;
   width:100%;
   
   
  
}
th {
  padding: 0px;
  text-align: left;
}
td{

text-align: right;
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
  <a href="#news">Products & Services</a>
  <a href="#contact">Contact</a>
   <div class="right" style="float:right;">
  <a href="/managerprelogin">Manager</a>
  </div>
  
</div>
   
           <div class="body1">
           
       <table  class="center" >
                  
                  <tr>
                   <th>  <img src="images/loangif.gif" alt="Italian Trulli" style="width:200px;height:200px;"></th>
                   <td>  <a href="/customerlogin">
       <button type="button" class="btn btn-primary">CONTINUE TO LOGIN</button></a>
       <b>*Dear Customer, OTP based login <br>has been introduced !.</b></td>
                   
                   </tr>
        </table>
     
     <!--  <img src="images/loangif.gif" alt="Italian Trulli" style="width:200px;height:200px;">
        <br><p align="right">
        <a href="/customerlogin">
       <button type="button" class="btn btn-primary">CONTINUE TO LOGIN</button></a><br>
       <b>*Dear Customer, OTP based login <br>has been introduced !.</b></p>--> 
     
        <span style="float:right"><a href="#" style="color:white;"><b>Privacy Statement</b></a> &nbsp;&nbsp;<a href="#" style="color:white;"><b>Terms & Conditions</b></a></span>
           </div>
             <br>
             <div class="div1">By clicking on "Continue to Login" button, you agree to the Terms of Service (Terms & Conditions) of usage of Loan Application.</div><hr>
              <h3 style="text-align:center;color:#357EC7;">Services We Offer</h3>
              <div class="body2">
              <div class="card" style="width: 16rem;">
  <img class="card-img-top" src="images/qwickloan.png" alt="Card image cap" width="200" height="230">
  <div class="card-body">
    <h5 class="card-title">QWICK LOAN</h5>
    <p class="card-text"></p>
    
  </div>
</div>

 <div class="card" style="width: 22rem;">
  <img class="card-img-top" src="images/cheaperintrest.png" alt="Card image cap" width="200" height="230">
  <div class="card-body">
    <h5 class="card-title">LOW INTREST RATE</h5>
    <p class="card-text"></p>
    
  </div>
</div>
        
        <div class="card" style="width: 23rem;">
  <img class="card-img-top" src="images/online.png" alt="Card image cap" width="200" height="230">
  <div class="card-body">
    <h5 class="card-title">24/7 ONLINE SERVICES</h5>
    <p class="card-text"></p>
    
  </div>
</div>
        
        
              
     </div>         
          <br>    
              
              
    <footer>
  <p>Loans4U<br>
  <a href="pavansadhineni22@gmail.com" style="color:white;"><i class="fa fa-envelope"></i> cutomer@loans4u.com</a></p>
  <p><i class="fa fa-phone"> : +91 8096 1394 97 </i></p>
</footer>          
              
</div>
</body>
</html>