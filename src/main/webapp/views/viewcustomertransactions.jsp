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

.wrapper {
    background-color: #222;
    min-height: 100px;
    max-width: 100%;
    margin: 10px auto;
    padding: 10px 30px
}

.dark,
.input:focus {
    background-color: #222
}

.navbar {
    padding: 0.5rem 0rem
}

.navbar .navbar-brand {
    font-size: 30px
}

#income {
    border-right: 1px solid #bbb
}

.notify {
    display: none
}

.nav-item .nav-link .fa-bell-o,
.fa-long-arrow-down,
.fa-long-arrow-up {
    padding: 10px 10px;
    background-color: #444;
    border-radius: 50%;
    position: relative;
    font-size: 18px
}

.nav-item .nav-link .fa-bell-o::after {
    content: '';
    position: absolute;
    width: 7px;
    height: 7px;
    border-radius: 50%;
    background-color: #ffc0cb;
    right: 10px;
    top: 10px
}

.nav-item input {
    border: none;
    outline: none;
    box-shadow: none;
    padding: 3px 8px;
    width: 75%;
    color: #eee
}

.nav-item .fa-search {
    font-size: 18px;
    color: #bbb;
    cursor: pointer
}

.navbar-nav:last-child {
    display: flex;
    align-items: center;
    width: 40%
}

.navbar-nav .nav-item {
    padding: 0px 0px 0px 10px
}

.navbar-brand p {
    display: block;
    font-size: 14px;
    margin-bottom: 3px
}

.text {
    color: #bbb
}

.money {
    font-family: 'Lato', sans-serif
}

.fa-long-arrow-down,
.fa-long-arrow-up {
    padding-left: 12px;
    padding-top: 8px;
    height: 30px;
    width: 30px;
    border-radius: 50%;
    font-size: 1rem;
    font-weight: 100;
    color: #28df99
}

.fa-long-arrow-up {
    color: #ffa500
}

.nav.nav-tabs {
    border: none
}

.nav.nav-tabs .nav-item .nav-link {
    color: #bbb;
    border: none
}

.nav.nav-tabs .nav-link.active {
    background-color: #222;
    border: none;
    color: #fff;
    border-bottom: 4px solid #fff
}

.nav.nav-tabs .nav-item .nav-link:hover {
    border: none;
    color: #eee
}

.nav.nav-tabs .nav-item .nav-link.active:hover {
    border-bottom: 4px solid #fff
}

.nav.nav-tabs .nav-item .nav-link:focus {
    border-bottom: 4px solid #fff;
    color: #fff
}

.table-dark {
    background-color: #222
}

.table thead th {
    text-transform: uppercase;
    color: #bbb;
    font-size: 12px
}

.table thead th,
.table td,
.table th {
    border: none;
    overflow: auto auto
}

td .fa-briefcase,
td .fa-bed,
td .fa-exchange,
td .fa-cutlery {
    color: #ff6347;
    background-color: #444;
    padding: 5px;
    border-radius: 50%
}

td .fa-bed,
td .fa-cutlery {
    color: #40a8c4
}

td .fa-exchange {
    color: #b15ac7
}

tbody tr td .fa-cc-mastercard,
tbody tr td .fa-cc-visa {
    color: #bbb
}

tbody tr td.text-muted {
    font-family: 'Lato', sans-serif
}

tbody tr td .fa-long-arrow-up,
tbody tr td .fa-long-arrow-down {
    font-size: 12px;
    padding-left: 7px;
    padding-top: 3px;
    height: 20px;
    width: 20px
}

.results span {
    color: #bbb;
    font-size: 12px
}

.results span b {
    font-family: 'Lato', sans-serif
}

.pagination .page-item .page-link {
    background-color: #444;
    color: #fff;
    padding: 0.3rem .75rem;
    border: none;
    border-radius: 0
}

.pagination .page-item .page-link span {
    font-size: 16px
}

.pagination .page-item.disabled .page-link {
    background-color: #333;
    color: #eee;
    cursor: crosshair
}

@media(min-width:768px) and (max-width: 991px) {
    .wrapper {
        margin: auto
    }

    .navbar-nav:last-child {
        display: flex;
        align-items: start;
        justify-content: center;
        width: 100%
    }

    .notify {
        display: inline
    }

    .nav-item .fa-search {
        padding-left: 10px
    }

    .navbar-nav .nav-item {
        padding: 0px
    }
}

@media(min-width: 300px) and (max-width: 767px) {
    .wrapper {
        margin: auto
    }

    .navbar-nav:last-child {
        display: flex;
        align-items: start;
        justify-content: center;
        width: 100%
    }

    .notify {
        display: inline
    }

    .nav-item .fa-search {
        padding-left: 10px
    }

    .navbar-nav .nav-item {
        padding: 0px
    }

    #income {
        border: none
    }
}

@media(max-width: 400px) {
    .wrapper {
        padding: 10px 15px;
        margin: auto
    }

    .btn {
        font-size: 12px;
        padding: 10px
    }

    .nav.nav-tabs .nav-link {
        padding: 10px
    }
}

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
    margin-left:0%;
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
    <div class="div1">&nbsp;&nbsp;&nbsp;<b>&nbsp;&nbsp;&nbsp;&nbsp;Welome: <%=session.getAttribute("uname") %></b></div>
      <div class="body1" oncontextmenu='return false' class='snippet-body'>  
     
     
       <div class="wrapper rounded">
    <nav class="navbar navbar-expand-lg navbar-dark dark d-lg-flex align-items-lg-start"> <a class="navbar-brand" href="#">Transactions <p class="text-muted pl-1">Welcome to your transactions</p> </a> <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-lg-auto">
                <li class="nav-item "> <a href="#"><span class="fa fa-search"></span></a> <input type="search" class="dark" placeholder="Search"> </li>
             <li class="nav-item "> <a href="/emicalci"><span class="fa fa-question"></span></a> </li>
            
            </ul>
        </div>
    </nav>
    <div class="row mt-2 pt-2">
        <div class="col-md-6" id="income">
            <div class="d-flex justify-content-start align-items-center">
                <p class="fa fa-long-arrow-down"></p>
                <p class="text mx-3">Total Amount received</p>
                <p class="text-white ml-4 money">116500/-</p>
            </div>
        </div>
      
    </div>
    <div class="d-flex justify-content-between align-items-center mt-3">
        <ul class="nav nav-tabs w-75">
            <li class="nav-item"> <a class="nav-link active" href="#history">Monthly Payments</a> </li>
           <!--  <li class="nav-item"> <a class="nav-link" href="/transactionnew">Loan issued</a> </li> -->
             <li class="nav-item"> <a class="nav-link" href="/transactionvisualisation">Loan Visualisation</a> </li>
        </ul> 
    </div>
    <div class="table-responsive mt-3">
        <table class="table table-dark table-borderless">
            <thead>
                <tr>
                    <th scope="col">Loan Id</th>
                    <th scope="col">Payment Mode</th>
                    <th scope="col">Date paid</th>
                    <th scope="col">User name</th>
                    
                    <th scope="col" class="text-right">Amount</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td scope="row"> <span class="fa fa-briefcase mr-1"></span>Ap987897299 </td>
                    <td><span class="fa fa-cc-mastercard"></span></td>
                    <td class="text-muted">30 dec 2020, 12:30 PM</td>
                    <td class="text-muted">Ayyappa</td>
                    <td class="d-flex justify-content-end align-items-center"> <span class="fa fa-long-arrow-down mr-1"></span>5000/- </td>
                </tr>
                <tr>
                    <td scope="row"> <span class="fa fa-bed mr-1"></span> Ap987897300</td>
                    <td><span class="fa fa-cc-mastercard"></span></td>
                    <td class="text-muted">28 dec 2020, 2:00 PM</td>
                    <td class="text-muted">Jsr</td>
                    <td class="d-flex justify-content-end align-items-center"> <span class="fa fa-long-arrow-down mr-1"></span> 10000/-</td>
                </tr>
                <tr>
                    <td scope="row"> <span class="fa fa-exchange mr-1"></span> Ap987897301 </td>
                    <td><span class="fa fa-cc-visa"></span></td>
                    <td class="text-muted">10 dec 2020, 8:30 PM</td>
                    <td class="text-muted">pavan</td>
                    <td class="d-flex justify-content-end align-items-center"> <span class="fa fa-long-arrow-down mr-1"></span> 15000/- </td>
                </tr>
                <tr>
                    <td scope="row"> <span class="fa fa-exchange mr-1"></span>Ap987897302 </td>
                    <td><span class="fa fa-cc-mastercard"></span></td>
                    <td class="text-muted">12 dec 2020, 4:30 PM</td>
                    <td class="text-muted">Lokesh</td>
                    <td class="d-flex justify-content-end align-items-center"> <span class="fa fa-long-arrow-down mr-1"></span> 15500/- </td>
                </tr>
                <tr>
                    <td scope="row"> <span class="fa fa-cutlery mr-1"></span> Ap987897303 </td>
                    <td><span class="fa fa-cc-visa"></span></td>
                    <td class="text-muted">11 dec 2020, 5:30 PM</td>
                    <td class="text-muted">Prudhvi</td>
                    <td class="d-flex justify-content-end align-items-center"> <span class="fa fa-long-arrow-down mr-1"></span> 18000/- </td>
                </tr>
                <tr>
                    <td scope="row"> <span class="fa fa-briefcase mr-1"></span> Ap987897304</td>
                    <td><span class="fa fa-cc-mastercard"></span></td>
                    <td class="text-muted">10 dec 2020, 01:30 PM</td>
                    <td class="text-muted">Manas</td>
                    <td class="d-flex justify-content-end align-items-center"> <span class="fa fa-long-arrow-down mr-1"></span> 20000/- </td>
                </tr>
                <tr>
                    <td scope="row"> <span class="fa fa-briefcase mr-1"></span> Ap987897305 </td>
                    <td><span class="fa fa-cc-visa"></span></td>
                    <td class="text-muted">01 jan 2020, 01:30 PM</td>
                    <td class="text-muted">Chandu</td>
                    <td class="d-flex justify-content-end align-items-center"> <span class="fa fa-long-arrow-down mr-1"></span> 25000/-</td>
                </tr>
            </tbody>
        </table>
    </div>
    
                                <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js'></script>
                                <script type='text/javascript' src=''></script>
                                <script type='text/javascript' src=''></script>
                                <script type='text/Javascript'></script>
     
     
     </div>  
      <div class="body2" style="margin-left:50px;">
             
              
              
      
              
              
              
              
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