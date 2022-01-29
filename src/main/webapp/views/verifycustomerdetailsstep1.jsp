<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Verify Customer details step1</title>
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
}
.body2{


    width:95%;
    
    align:center;

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
  align:center;
  color:#357EC7;
  background-color:#b0e0e6;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 100%;
 

 
  color:black;
   display: block;
  margin-left: auto;
  margin-right: auto;
   
  
  
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
th, td {
   border-bottom: 2px solid #ddd;
}
table, th, td {
  
  border-collapse: collapse;
  align:center;
   border-spacing: 25px;
 background-color:rgba(0, 0, 0, 0);
  
  border-spacing: 0 15px;
   
   padding: 5px;
  
}
.center4 {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 50%;
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
  
  <a href="/customerlogout/<%=session.getAttribute("email") %>"><i class="fa fa-sign-out"></i>Logout</a>
  </div>
</div>
    <div class="div1">&nbsp;&nbsp;&nbsp;<b>Welome: <%=session.getAttribute("uname") %></b></div><hr>
   
      <div class="body2">
             
        <h5 style="text-align:center;color:#1c9941;">Hello <%=session.getAttribute("uname") %> you are in second step of your loan process...<br></h5>

           <h6 style="text-align:center;color:#ed152b;">* kindly verify your details..................</h6><br>
       
              <div class="card" style="width: 50rem;" >
 
  <div class="card-body">
    <br>
   <b> <!--  <h2 class="card-text">Unauthorized Access</h2></b>
   <p>Your account does not have access to this page.<br>Please <a href="/landing">switch</a> or <a href="/customerlogin">login</a> your account</p>
     <br><br>-->
     <table style="width:100%">
  <tr>
    <th>Name:</th>
    <td><%=session.getAttribute("uname") %></td>
  </tr>
   <tr>
    <th>Customer Account Number:</th>
    <td><%=session.getAttribute("acno") %></td>
  </tr>
  <tr>
    <th>Email:</th>
    <td><%=session.getAttribute("email") %></td>
  </tr>
  <tr>
    <th>Gender:</th>
    <td><%=session.getAttribute("cgender") %></td>
  </tr>
  <tr>
    <th>Customer Mobile Number:</th>
    <td><%=session.getAttribute("mobile") %></td>
  </tr>
  <tr>
    <th>Customer Loan Choice:</th>
    <td><%=session.getAttribute("loantype") %></td>
  </tr>
  <tr>
    <th>Loan Intrest Rate:</th>
    <td><%=session.getAttribute("rate") %>%&nbsp;p.a</td>
  </tr>
   <tr>
    <th>Customer Annual Income:</th>
    <td><%=session.getAttribute("annincome") %>&nbsp;rupees.</td>
  </tr>
   <tr>
    <th>Customer PAN Number:</th>
    <td><%=session.getAttribute("pan") %></td>
  </tr>
   <tr>
    <th>Location:</th>
    <td><%=session.getAttribute("location") %>&nbsp;</td>
  </tr>
</table>
     
  </div>
</div><br><br>
<div class="center4">
      <a href="/customer/selectloan"> <button type="button" class="btn btn-info" style='margin-right:322px;' ><i class="fa fa-angle-double-left" aria-hidden="true"></i>&nbsp;&nbsp;Previous</button></a>
       <a href="/proceedstep2"> <button type="button" class="btn btn-info" style='margin-right:5px;'>Proceed&nbsp;&nbsp;<i class="fa fa-angle-double-right" aria-hidden="true"></i></button></a>
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