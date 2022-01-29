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
        function printDiv() {
            var divContents = document.getElementById("GFG").innerHTML;
            var a = window.open('', '', 'height=100%, width=100%');
            a.document.write('<html>');
            a.document.write('<body > <h1>Div contents are <br>');
            a.document.write(divContents);
            a.document.write('</body></html>');
            a.document.close();
            a.print();
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
}
.body2{


   
    
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

.cardmain {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 100%;
 
  display: inline-block;
  margin-right: 30px;
  color:black;
  
}
.card-body{

text-align:center;
background-color:#edeff2;

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
.center {
  margin-left: auto;
  margin-right: auto;
}

.center4 {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 50%;
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

h2 {
  font-family: 'Mr Dafoe';
  margin: 0;
  font-size: 1.2em;
  margin-top: -0.2em;
  color: #bd7731;
   text-shadow: 0 0 0.05em #fff, 0 0 0.2em #f1edf2, 0 0 0.3em #f1edf2;
  transform: rotate(-7deg);
}
.column1 {
 border-left: 3px solid;
 border-right: 1px solid;
  float: left;
  width: 22.36%;
  padding: 10px;
  height: 300px; /* Should be removed. Only for demonstration */
}

.column2 {
 text-align:center;
 border-right: 1px solid;
  float: left;
  width: 18.36%;
  padding: 10px;
  height: 300px; /* Should be removed. Only for demonstration */
}
.column {
  float: left;
  width: 33.33%;
  padding: 10px;
  height: 300px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
.stamp {
  transform: rotate(12deg);
	color: #555;
	font-size: 3rem;
	font-weight: 700;
	border: 0.25rem solid #555;
	display: inline-block;
	padding: 0.25rem 1rem;
	text-transform: uppercase;
	border-radius: 1rem;
	font-family: 'Courier';
	-webkit-mask-image: url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/8399/grunge.png');
  -webkit-mask-size: 944px 604px;
  mix-blend-mode: multiply;
}

#watermark { 
position:absolute;
   
   opacity:0.4;
   z-index:99;
   color:white;
    transform:rotate(0deg);
    -webkit-transform:rotate(360deg);

 }

.is-approved {
	color: #0A9928;
	border: 0.5rem solid #0A9928;
	-webkit-mask-position: 13rem 6rem;
	transform: rotate(-14deg);
  border-radius: 0;
} 

.is-nope {
  color: #D23;
  border: 0.5rem double #D23;
  transform: rotate(-16deg);
	-webkit-mask-position: 13rem 6rem;
  font-size: 2rem;  
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
    <div class="customerform" id="GFG" style="margin-left:30px;margin-right:30px;">
   <i class="fas fa-user-circle" style=" font-size: 40px;display:inline-block;"></i>
    <sup><h6 style="display:inline-block;">Name:&nbsp;<%=session.getAttribute("ccname") %></h6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     </sup><div class="income" style="display:inline-block;">
    <h6>&nbsp;Annual income:&nbsp;<%=session.getAttribute("cannincome") %></h6>&nbsp;
     <h6 style="display:inline-block;">Tenure:&nbsp;36 Months</h6>&nbsp;&nbsp;&nbsp;
      <h6 style="display:inline-block;">CIBIL Score:&nbsp;<%=session.getAttribute("cibil") %></h6>&nbsp;&nbsp;&nbsp;
       <h6 style="display:inline-block;">Application No:&nbsp;<%=session.getAttribute("cloannoid") %></h6>&nbsp;
       <h6 style="display:inline-block;">Date:&nbsp;<%=session.getAttribute("cloanreqdate") %></h6><hr>
   
     </div>
     <div class="row">
  <div class="column1" >
    <h6>Occupation:&nbsp;&nbsp;<%=session.getAttribute("coccupation") %></h6><hr>
   
    <h6>PAN Card:&nbsp;&nbsp;<%=session.getAttribute("ccpan") %></h6><hr>
     <h6>Aadhar:&nbsp;&nbsp;<%=session.getAttribute("ccaadhar") %></h6><hr>
     <u><h6>Contact Details:&nbsp;&nbsp;</h6></u>
     <p><%=session.getAttribute("clemail") %></p>
      <p><%=session.getAttribute("cmobileno") %></p><hr>
      <h6>Current Address:&nbsp;&nbsp;</h6>
      <p><%=session.getAttribute("caddress") %></p>
       <h6>Documents:&nbsp;&nbsp;</h6>
      <a href="#"><p>Download All</p></a>
      
  </div>
  <div class="column2" >
    <p>CIBIL Score:</p>
    <%if((int)session.getAttribute("cibil")>350) {%>
   <b> <h4 style="color:green;"><%=session.getAttribute("cibil") %></h4></b>
   <%}else {%>
    <h4 style="color:red;"><%=session.getAttribute("cibil") %></h4></b>
   
   <%} %>
   <p>Eligibility</p>
    <%if((int)session.getAttribute("cibil")>350) {%>
   <b> <h4 style="color:green;">300000 /-</h4></b>
   <%}else {%>
    <h4 style="color:#b80d18;">N/A</h4></b>
   
   <%} %>
    <p>Tenure</p>
     <%if((int)session.getAttribute("cibil")>350) {%>
   <b> <h4 >36 Months</h4></b>
   <%}else {%>
    <h4 style="color:#b80d18;">N/A</h4></b>
   
   <%} %>
    <p>Rate of Intrest</p>
      <%if((int)session.getAttribute("cibil")>350) {%>
   <b> <h4 ><%=session.getAttribute("clrate") %></h4></b>
   <%}else {%>
    <h4 style="color:#b80d18;">N/A</h4></b>
   
   <%} %>
  
  </div>
  <div class="column" >
  <h4>Type: Home Loan</h4>
  <% if((int)session.getAttribute("llstatus")==1){%>
     <span class="stamp is-approved">Approved</span>
     <%} else if((int)session.getAttribute("llstatus")==-1){ %>
   <span class="stamp is-nope">Rejected</span> <%} %>
     
   <div class="col-sm-4"> <div id="watermark">
                                  <img  class="blocktext" src="<c:url value = "/images/logo.png"/>" alt="#includeimage" style="width:500px;align:right;"></div>
                                </div>
   
    
  <h5>Manager Signature:</h5>
  <img alt="" src="<c:url value = "/images/managersign.png"/>"  width="500" height="200"><br><br>
  
  <button type="button" class="btn btn-info" style="margin-left:40px;" onclick="window.print()">Print</button>
  </div>
</div>

    </div>
      <div class="body2">
              
     <br><br> <br><br>
      
              
     </div> 
     
      <br>   
      <div class="div3">
       
    <footer>
  <p>Loans4U<br>
  <a href="pavansadhineni22@gmail.com" style="color:white;"><i class="fa fa-envelope"></i> cutomer@loans4u.com</a></p>
  <p><i class="fa fa-phone"> : +91 8096 1394 97 </i></p>
</footer>          
     </div>          
</div>
</body>
</html>