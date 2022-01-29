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
  <link rel="stylesheet" type="text/css" media="screen" href="https://blog.bankbazaar.com/wp-content/themes/iconic-one/css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" media="screen" href="https://blog.bankbazaar.com/wp-content/themes/iconic-one/css/jquery.jqplot.css" />
	<link rel="stylesheet" type="text/css" media="screen" href="https://blog.bankbazaar.com/wp-content/themes/iconic-one/css/slider.css?v=1.0" />
	<link rel="stylesheet" type="text/css" media="screen" href="https://blog.bankbazaar.com/wp-content/themes/iconic-one/css/emicalculator.css?v=1.10" />
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-5152316-1"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'UA-5152316-1');
	</script>
	<style>
	.slider.slider-horizontal{border:0 none;}
	</style>
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">

<meta name="viewport" content="width=device-width, initial-scale=1">
  
  <script>(window.BOOMR_mq=window.BOOMR_mq||[]).push(["addVar",{"rua.upush":"false","rua.cpush":"false","rua.upre":"false","rua.cpre":"false","rua.uprl":"false","rua.cprl":"false","rua.cprf":"false","rua.trans":"","rua.cook":"false","rua.ims":"false","rua.ufprl":"false","rua.cfprl":"false","rua.isuxp":"false","rua.texp":"norulematch"}]);</script>
                              <script>!function(a){var e="https://s.go-mpulse.net/boomerang/",t="addEventListener";if("False"=="True")a.BOOMR_config=a.BOOMR_config||{},a.BOOMR_config.PageParams=a.BOOMR_config.PageParams||{},a.BOOMR_config.PageParams.pci=!0,e="https://s2.go-mpulse.net/boomerang/";if(window.BOOMR_API_key="9SYYK-MJVCS-XT3LK-66KMV-TN7CB",function(){function n(e){a.BOOMR_onload=e&&e.timeStamp||(new Date).getTime()}if(!a.BOOMR||!a.BOOMR.version&&!a.BOOMR.snippetExecuted){a.BOOMR=a.BOOMR||{},a.BOOMR.snippetExecuted=!0;var i,_,o,r=document.createElement("iframe");if(a[t])a[t]("load",n,!1);else if(a.attachEvent)a.attachEvent("onload",n);r.src="javascript:void(0)",r.title="",r.role="presentation",(r.frameElement||r).style.cssText="width:0;height:0;border:0;display:none;",o=document.getElementsByTagName("script")[0],o.parentNode.insertBefore(r,o);try{_=r.contentWindow.document}catch(O){i=document.domain,r.src="javascript:var d=document.open();d.domain='"+i+"';void(0);",_=r.contentWindow.document}_.open()._l=function(){var a=this.createElement("script");if(i)this.domain=i;a.id="boomr-if-as",a.src=e+"9SYYK-MJVCS-XT3LK-66KMV-TN7CB",BOOMR_lstart=(new Date).getTime(),this.body.appendChild(a)},_.write("<bo"+'dy onload="document._l();">'),_.close()}}(),"".length>0)if(a&&"performance"in a&&a.performance&&"function"==typeof a.performance.setResourceTimingBufferSize)a.performance.setResourceTimingBufferSize();!function(){if(BOOMR=a.BOOMR||{},BOOMR.plugins=BOOMR.plugins||{},!BOOMR.plugins.AK){var e=""=="true"?1:0,t="",n="b2fvkuqxf7rh4yooybfa-f-db5e7b8ed-clientnsv4-s.akamaihd.net",i="false"=="true"?2:1,_={"ak.v":"32","ak.cp":"634437","ak.ai":parseInt("386943",10),"ak.ol":"0","ak.cr":28,"ak.ipv":4,"ak.proto":"http/1.1","ak.rid":"182fd482","ak.r":11364,"ak.a2":e,"ak.m":"a","ak.n":"essl","ak.bpcip":"14.139.85.0","ak.cport":51733,"ak.gh":"124.124.252.163","ak.quicv":"","ak.tlsv":"tls1.3","ak.0rtt":"","ak.csrc":"-","ak.acc":"reno","ak.t":"1640939594","ak.ak":"hOBiQwZUYzCg5VSAfCLimQ==NLYHp8Tdm9seIzH1QiAvRyknN6D3XeH2dd+wErajaaUQmhohd1oUTv6l1Jqi3dmPrc3BHSu4OAAhZLWK7yP1bcYnzHmztFgahYZJMRqMk63sC//6S1YApWfaYbP07UvyZCR5k7lok8II2V+GVYAj3C0xnRTvCaz5KXcSFeau8+qmIM9CEjilqLvkRbJfrqKkqKiVKddACZKtp7ofo6+5aXsHDNjsx5wweToNEVMm8XySzPRQjrGE0cDJoyO7dYMx7efMj4nKqsa5c170XQjw8FKE0nTqg43Yntzdrb4qJglzzltZ9lbv0wWlF7WZf1MY669oF01eDYA/ZX3yLKneP/EmTwhqZLgSjD5QXr822ziBL2KGRo1FoCj7e4Ps1PCMyVbiAxraBkXYrz+uNHXNM/EedLcHQmYMKSpSFh7Cpbk=","ak.pv":"97","ak.dpoabenc":"","ak.tf":i};if(""!==t)_["ak.ruds"]=t;var o={i:!1,av:function(e){var t="http.initiator";if(e&&(!e[t]||"spa_hard"===e[t]))_["ak.feo"]=void 0!==a.aFeoApplied?1:0,BOOMR.addVar(_)},rv:function(){var a=["ak.bpcip","ak.cport","ak.cr","ak.csrc","ak.gh","ak.ipv","ak.m","ak.n","ak.ol","ak.proto","ak.quicv","ak.tlsv","ak.0rtt","ak.r","ak.acc","ak.t","ak.tf"];BOOMR.removeVar(a)}};BOOMR.plugins.AK={akVars:_,akDNSPreFetchDomain:n,init:function(){if(!o.i){var a=BOOMR.subscribe;a("before_beacon",o.av,null,null),a("onbeacon",o.rv,null,null),o.i=!0}return this},is_complete:function(){return!0}}}}()}(window);</script>

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
	theme: "dark1",
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
			
			{y: <%=session.getAttribute("inactive")%>, label: "Paid"},
			{y: <%=session.getAttribute("active")%>, label: "Ongoing"},
			{y: 7.9, label: "Defaulters"},
			
		]
	}]
});

var chart1 = new CanvasJS.Chart("chartContainer2", {
	theme: "dark1",
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
			{y: <%=session.getAttribute("manageracceptedrequests")%>, label: "accepted"},
			
		]
	}]
});

chart1.render();
chart.render();

}  
  
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
   <div class="container">
		<div class="row">
			<div class="col-md-8">
				<form id="calculateform" autocomplete="off">
					<div class="section-container">
						<div class="row mobile-center slider-rs">
							<div class="col-md-10 col-sm-11 col-centered amountSliderContainer">
								<div class="slider-heading">Loan Amount</div>
								<input id="sliderLoanAmount" data-slider-id='slider' type="text" class="slider slider-horizontal" data-slider-min="50000" data-slider-max="3000000" data-slider-value="50000" data-slider-step="50000">
								<input type="tel" onkeypress="return noenter()" id="sliderLoanAmountValue" class="slider-value" value="50,000" name="loanAmount" required  min="50000" max="50000000" maxlength="10">
								<div class="slider-value-container">
									<div class="slider-min pull-left">
				                    	<span><img class="rs-symbol-align" src="https://blog.bankbazaar.com/wp-content/themes/iconic-one/images/rupee-icon-black.png"> 50K</span>
				            		</div>
									<div class="slider-max pull-right">
				                        <span> > <img class="rs-symbol-align" src="https://blog.bankbazaar.com/wp-content/themes/iconic-one/images/rupee-icon-black.png">30L</span>
				                        <input type="hidden" id="slidevalue">
				               		</div>
			               		</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-10 col-sm-11 col-centered erroramt">
								<span class="errormsg hidemsg">Minimum value should be 50,000</span>
							<hr>
							</div>
						</div>
						<div class="row mobile-center slider-percentage">
							<div class="col-md-10 col-sm-11 col-centered">
								<div class="slider-heading">Interest Rate</div>
								
								<input id="sliderInterestRate" data-slider-id='slider' type="text" class="slider slider-horizontal" data-slider-min="1" data-slider-max="30"  data-slider-value="10" data-slider-step="0.1">
								<input type="tel" onkeypress="return noenter()" id="sliderInterestRateValue" value="10%" class="slider-value" name="interestRate" required min="1" max="30" maxlength="5">
								<div class="slider-value-container">
									<div class="slider-min pull-left">
				                    	<span>1%</span>
				            		</div>
									<div class="slider-max pull-right">
				                        <span>30%</span>
				                        <input type="hidden" id="slidevalue">
				               		</div>
			               		</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-10 col-sm-11 col-centered errorinterest">
							<span class="errormsg hidemsg">Minimum value should ddd</span>
							<hr>
							</div>
						</div>
						<div class="row mobile-center">
							<div class="col-md-10 col-sm-11 col-centered">
								<div class="slider-heading">Loan Tenure</div>
								<input id="sliderTenure" data-slider-id='slider' type="text" class="slider slider-horizontal" data-slider-min="12" data-slider-max="60" data-slider-step="3">
								<div class="slider-loan-tenure">
									<input type="tel" onkeypress="return noenter()" id="sliderTenureValue" value="12" class="slider-value" name="tenure" required min="12" max="60" maxlength="2">
									<span class="loan-month-label">Months</span>
								</div>
								<div class="slider-value-container">
									<div class="slider-min pull-left">
				                    	<span>12M</span>
				            		</div>
									<div class="slider-max pull-right">
				                        <span>60M</span>
				                        <input type="hidden" id="slidevalue">
				               		</div>
			               		</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-10 col-sm-11 col-centered errortenure">
							<span class="errormsg hidemsg">Minimum value should ddd</span>
							<hr>
							</div>
						</div>
						<div class="row mobile-center">
							<div class="col-md-10 col-sm-11 col-centered processing-fee">
								<label class="slider-heading">Processing Fee</label>
								<input type="tel" value="0" onkeypress="return noenter()" id="processingfee" placeholder="" name="processingFee" maxlength="7">
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<button type="submit" class="calculate-btn" id="calculate">Calculate</button>
							</div>
						</div>
						
						<div class="row">
							<div class="col-md-12">
								<div class="emi-amt-view">
								Your Monthly Loan EMI : <span class="emivalueblock"><img src="https://blog.bankbazaar.com/wp-content/themes/iconic-one/images/rupee-icon-white.png" alt="Rupee image"> <strong id="totamt">0</strong></span>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
			<div class="col-md-4">
				<div class="col-md-12">
					<a href="https://www.bankbazaar.com/personal-loan.html?variant=slide&utm_campaign=SEO_EMI_Calculator" class="dontShowDesktop" target="_blank">Apply Now</a>
				</div>
				<div class="chart-container">
					<div class="chart-heading">
					Break-up of total amount payable
					</div>
					<div id="pie1" class="" style="height: 400px; width: 285px; position: relative; margin: 0 auto;"></div>
					<div class="pie-chart-details">
                        <div class="detail-table-piechart" id="break-down-section">
                            <div class="rows-left">
                                <div class="colmn1"> <span class="arange-squre"></span>Loan Amount</div>
                                <div class="colmn2"><span id="pieLoanAmount">0</span> <span><img src="https://blog.bankbazaar.com/wp-content/themes/iconic-one/images/rupee-icon-white.png" alt="Rupee image"> </span></div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="rows-left">
                                <div class="colmn1"> <span class="green-squre"></span>Total Interest Due</div>
                                <div class="colmn2"><span id="pieInterestPay">0</span> <span><img src="https://blog.bankbazaar.com/wp-content/themes/iconic-one/images/rupee-icon-white.png" alt="Rupee image"> </span></div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="rows-left">
                                <div class="colmn1"> <span class="red-squre"></span>Processing Fee</div>
                                <div class="colmn2"><span id="pieProcessFee">0</span> <span><img src="https://blog.bankbazaar.com/wp-content/themes/iconic-one/images/rupee-icon-white.png" alt="Rupee image"> </span></div>
                                <div class="clearfix"></div>
                            </div>
                            <hr>
                            <div class="rows-left">
                                <div class="colmn1">Total Amount Payable</div>
                                <div class="colmn2"><span id="pieTotalAmountPay">0</span> <span><img src="https://blog.bankbazaar.com/wp-content/themes/iconic-one/images/rupee-icon-white.png" alt="Rupee image"> </span></div>
                                <div class="clearfix"></div>
                            </div>
                        </div>                      
                    </div> 
				</div>
			</div>
		</div>
		

		<div class="row">
			<div id="amortization-details-table"></div>
		</div>
	</div>
	<script type="text/javascript" src="https://blog.bankbazaar.com/wp-content/themes/iconic-one/js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="https://blog.bankbazaar.com/wp-content/themes/iconic-one/js/jquery-migrate-1.4.1.js"></script>
	<script type="text/javascript" src="https://blog.bankbazaar.com/wp-content/themes/iconic-one/js/bootstrap.js"></script>
	<script type="text/javascript" src="https://blog.bankbazaar.com/wp-content/themes/iconic-one/js/bootstrap-custom-slider.js"></script>
	<script type="text/javascript" src="https://blog.bankbazaar.com/wp-content/themes/iconic-one/js/jquery.jqplot.js"></script>
	<script type="text/javascript" src="https://blog.bankbazaar.com/wp-content/themes/iconic-one/js/jqplot.pieRenderer.min.js"></script>
	<script type="text/javascript" src="https://blog.bankbazaar.com/wp-content/themes/iconic-one/js/emicalculator-pl.js?v=1.7"></script>
   
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