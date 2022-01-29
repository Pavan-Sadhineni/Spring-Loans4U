<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manager Login Page</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
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
    background-image: url("images/loan.png");
    background-repeat: no-repeat;
    background-size: cover;
    width:97%;
    margin-left:1.7%;
}
.body2{


    width:35%;
    margin-left:42%;

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
.list1{

 width:90%;
    margin-left:5%;

}
.center{
      
   margin-left:43%;
    margin-right:43%;

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
<img src="images/manager.png" alt="manager image" width="200" height="200" style="display: block;
    margin: 0 auto;z-index=-1;">
    
    
 <div class="body2">
        
        <form method="post" action="/mlogin" style="display: block;
    margin: 0 auto;" >
     <label><b>&nbsp;&nbsp;Manager Username*</b></label><br>
     <input type="text" name="email" autocomplete="off"><br><br>
     <label><b>&nbsp;&nbsp;Manager Password*</b></label><br>
     <input type="text" name="password" autocomplete="off" required="required"> &nbsp;&nbsp;&nbsp;<a href="#">Forgot Login Password</a><br><br>
     <p style="text-align:margin-left: 30px;">&nbsp;&nbsp;
     <input type="submit" value="&nbsp;Login&nbsp;" class="btn btn-info" required="required"> &nbsp;&nbsp;&nbsp; <input type="reset" value="Reset" class="btn btn-info"></p>
     
     
     </div>
     
     
   </form> 
   
   
     
       <br><br><br><br>
              
    <footer>
  <p>Loans4U<br>
  <a href="pavansadhineni22@gmail.com" style="color:white;"><i class="fa fa-envelope"></i> manager@loans4u.com</a></p>
  <p><i class="fa fa-phone"> : +91 8096 1394 97 </i></p>
</footer>          
              
</div>
</body>
</html>