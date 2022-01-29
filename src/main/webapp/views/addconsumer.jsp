<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Consumer</title>

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700">
    <link rel="stylesheet" href="https://loandemo.geeksourcecodes.com/public/themes/adminlte/css/adminlte.css">
    <link rel="stylesheet" href="https://loandemo.geeksourcecodes.com/public/themes/adminlte/css/custom.css"/>
     


  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
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




.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -10px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 0px 0px 0px 0px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #04AA6D;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}



.button {
  border: none;
  color: white;
  padding: 10px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

.button1 {background-color: #4CAF50;} /* Green */
.button2 {background-color: #008CBA;} /* Blue */


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
	 
         
         
         <div class="row" style="margin-left:30px;">
  <div class="col-90">
    <div class="container">
      <form action="/saveconsumer" method="post" ModelAttribute="con">
      
        <div class="row">
          <div class="col-50">
            <h3 style="text-align:center;"><b>Customer Details</b></h3>
            <label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <input type="text" id="fname" name="name" placeholder="John M. Doe" autocomplete="off">
              <label for="fname"><i class="fa fa-user"></i> Gender</label>
            <input type="text" id="fname" name="gender" placeholder="John M. Doe">
         
            <label for="adr"><i class="fa fa-address-card-o"></i> Aadhar number</label>
            <input type="text" id="adr" name="aadhar" placeholder="0000 0000 0000" autocomplete="off">
            <label for="city"><i class="fa fa-address-card-o"></i> PAN Card Number</label>
            <input type="text" id="city" name="panno" placeholder="0T0000ASR" autocomplete="off">

            <div class="row">
              <div class="col-50">
                <label for="state">Annual income</label>
                <input type="text" id="state" name="annualincome" placeholder="00000" autocomplete="off">
              </div>
              
              <div class="col-50">
                <label for="zip">Zip</label>
                  <input type="text" id="zip" name="id" placeholder="10001" autocomplete="off">
              </div>
            </div>
          </div>

          <div class="col-50">
           <h3 style="text-align:center;"><b>Contact Details</b></h3>
              <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="email" placeholder="john@example.com" autocomplete="off">
           <label for="email"><i class="fa fa-phone"></i> Mobile No</label>
            <input type="text" id="email" name="mobileno" placeholder="john@example.com" autocomplete="off">
           <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="adr" name="location" placeholder="542 W. 15th Street" autocomplete="off">
          <label for="expmonth">Generate password</label>
           &nbsp;&nbsp;&nbsp;  <input type="text" id="adr" name="password" placeholder="542 W. 15th Street" autocomplete="off">
            
            <div class="row">
              <div class="col-50">
                <label for="expyear">Date of Birth</label>
                <input type="text" id="expyear" name="" placeholder="dd-mm-yyyy" autocomplete="off">
              </div>
              <div class="col-50">
                <label for="cvv">Age</label>
                <input type="text" id="cvv" name="" placeholder="yr" autocomplete="off">
              </div>
            </div>
          </div>
          
        </div>
        <label>
         &nbsp;&nbsp;&nbsp; <input type="checkbox" checked="checked" name="sameadr" autocomplete="off"> I Confirm All fields
        </label>
      <input type="submit" value="Add Customer" class="btn">
      </form>
    </div>
  </div>
  <div class="col-25">
    
  </div>
</div>
         
         
         
         
         
         
         
		
    </div>
					   


<script src="https://loandemo.geeksourcecodes.com/public/themes/adminlte/js/custom.js"></script>

    
     
      <div class="body2">
             
        
              
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