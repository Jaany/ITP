<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">

<title>About Us</title>

<style>
    
/*header*/

	.header-fixed {
		background-color:#292c2f;
		box-shadow:0 1px 1px #ccc;
		padding: 20px 40px;
		height: 80px;
		color: #ffffff;
		box-sizing: border-box;
		top:-100px;
		-webkit-transition:top 0.3s;
		transition:top 0.3s;
							}

	.header-fixed .header-limiter {
		max-width: 1200px;
		text-align: center;
		margin: 0 auto;
							}

/*	The header placeholder. It is displayed when the header is fixed to the top of the
	browser window, in order to prevent the content of the page from jumping up. */

	.header-fixed-placeholder{
		height: 80px;
		display: none;
							}

/* Logo */

	.header-fixed .header-limiter h1 {
		float: left;
		font: normal 38px Cookie, Arial, Helvetica, sans-serif;
		line-height: 40px;
		margin: 0;
		color:#2edaff;
									}

	.header-fixed .header-limiter h1 span {
		color: #ffffff;
								}

/* The navigation links */

	.header-fixed .header-limiter a {
		color: #ffffff;
		text-decoration: none;
									}

	.header-fixed .header-limiter nav {
		font:16px Arial, Helvetica, sans-serif;
		line-height: 40px;
		float: right;
										}

	.header-fixed .header-limiter nav a{
		display: inline-block;
		padding: 0 5px;
		text-decoration:none;
		color: #ffffff;
		opacity: 0.9;
										}

	.header-fixed .header-limiter nav a:hover{
		opacity: 1;
		color:#2edaff;
										}

	.header-fixed .header-limiter nav a.selected {
		color: #608bd2;
		pointer-events: none;
		opacity: 1;
								}

/* Fixed version of the header */

	body.fixed .header-fixed {
		padding: 10px 40px;
		height: 50px;
		position: fixed;
		width: 100%;
		top: 0;
		left: 0;
		z-index: 1;
								}

body.fixed .header-fixed-placeholder {
	display: block;
}

body.fixed .header-fixed .header-limiter h1 {
	font-size: 24px;
	line-height: 30px;
}

body.fixed .header-fixed .header-limiter nav {
	line-height: 28px;
	font-size: 13px;
}



mark{
	background-color: #2f2f2f;
	color: #ffffff;
	padding: 6px;
	font-weight: bold;
}







/* Making the header responsive */

@media all and (max-width: 600px) {

	.header-fixed {
		padding: 20px 0;
		height: 75px;
	}

	.header-fixed .header-limiter h1 {
		float: none;
		margin: -8px 0 10px;
		text-align: center;
		font-size: 24px;
		line-height: 1;
	}

	.header-fixed .header-limiter nav {
		line-height: 1;
		float:none;
	}

	.header-fixed .header-limiter nav a {
		font-size: 13px;
	}

	body.fixed .header-fixed {
		display: none;
	}

}

/*
	 We are clearing the body's margin and padding, so that the header fits properly.
	 We are also adding a height to demonstrate the scrolling behavior. You can remove
	 these styles.
 */

body {
	margin: 0;
	padding: 0;
	height: 1500px;
}
    
    
   
   /** code by webdevtrick ( https://webdevtrick.com ) **/
body {
	margin: 0;
	padding: 0;
}
.main {
	max-height: 550px;;
	background-color: #292c2f;
	color: white;
	font-size: 38pt;
	text-align: center;
	line-height: 550px;
}
footer{
	position: relative;
	bottom: 0;
}
.footer-distributed{
	background-color: #2f2f2f;
	box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.12);
	box-sizing: border-box;
	width: 100%;
	text-align: left;
	font: bold 16px sans-serif;

	padding: 55px 50px;
	margin-top: 80px;
}

.footer-distributed .footer-left,
.footer-distributed .footer-center,
.footer-distributed .footer-right{
	display: inline-block;
	vertical-align: top;
}

.footer-distributed .footer-left{
	width: 40%;
}

.footer-distributed h3{
	color:  #2edaff;
	margin: 0;
	font-family:Brush Script Std;
	font-size: 27px;
}

.footer-distributed h3 span{
	color:  #ffffff;
}


.footer-distributed .footer-links{
	color:  #2edaff;
	margin: 20px 0 12px;
	padding: 0;
}

.footer-distributed .footer-links a{
	display:inline-block;
	line-height: 1.8;
	text-decoration: none;
	color:  inherit;
}

.footer-distributed .footer-company-name{
	color:  #8f9296;
	font-size: 14px;
	font-weight: normal;
	margin: 0;
}


.footer-distributed .footer-center{
	width: 35%;
}

.footer-distributed .footer-center i{
	background-color:  #33383b;
	color: #ffffff;
	font-size: 25px;
	width: 38px;
	height: 38px;
	border-radius: 50%;
	text-align: center;
	line-height: 42px;
	margin: 10px 15px;
	vertical-align: middle;
}

.footer-distributed .footer-center i.fa-envelope{
	font-size: 17px;
	line-height: 38px;
}

.footer-distributed .footer-center p{
	display: inline-block;
	color: #ffffff;
	vertical-align: middle;
	margin:0;
}

.footer-distributed .footer-center p span{
	display:block;
	font-weight: normal;
	font-size:14px;
	line-height:2;
}

.footer-distributed .footer-center p a{
	color:  #5383d3;
	text-decoration: none;;
}

.footer-distributed .footer-right{
	width: 20%;
}

.footer-distributed .footer-company-about{
	line-height: 20px;
	color:  #92999f;
	font-size: 13px;
	font-weight: normal;
	margin: 0;
}

.footer-distributed .footer-company-about span{
	display: block;
	color:  #ffffff;
	font-size: 14px;
	font-weight: bold;
	margin-bottom: 20px;
}

.footer-distributed .footer-icons{
	margin-top: 25px;
}

.footer-distributed .footer-icons a{
	display: inline-block;
	width: 35px;
	height: 35px;
	cursor: pointer;
	background-color:  #33383b;
	border-radius: 2px;

	font-size: 20px;
	color: #ffffff;
	text-align: center;
	line-height: 35px;

	margin-right: 3px;
	margin-bottom: 5px;
}


@media (max-width: 880px) {

	.footer-distributed{
		font: bold 14px sans-serif;
	
	}

	.footer-distributed .footer-left,
	.footer-distributed .footer-center,
	.footer-distributed .footer-right{
		display: block;
		width: 100%;
		margin-bottom: 40px;
		text-align: center;
	}

	.footer-distributed .footer-center i{
		margin-left: 0;
	}
	.main {
		line-height: normal;
		font-size: auto;
	}

}
   
    
body {
	background-image:url('img/about.jpeg');
	background-repeat: no-repeat;
       background-size:1400px 400px;
	font-family:Arial, Helvetica, sans-serif;
	font-size:100%;
	line-height:1em;
	color:#a5a5a5;
	opacity:-100px;

	
}

#img{
border-radius:10%;
margin-left:610px;
margin-top:-260px;
width:350px;
height:200px;
position:relative;
}





.box{
		width:900px;
		height:268px;
		color:black;
		outline-color:#2f2f2f;
		outline: 2px solid; 
		margin-left:210px;
		margin-top:300px;
		background:white;
		
	}
	
#box2{
		width:1310.5px;
		height:460px;
		color:black;
		outline-color:#2f2f2f;
		outline: 2px solid; 
		opacity:1;
		margin-left:20px;
		margin-top:100px;
		position:absolute;
		background:white;
		border-style: groove;
	}
	

#box3{
		width:1200px;
		height:400px;
		color:black;
		outline-color:#2f2f2f;
		outline: 2px solid; 
		opacity:10;
		margin-left:70px;
		margin-top:650px;
		background:white;
		border-style: groove;
	}
	

#box4{
		width:1200px;
		height:400px;
		color:black;
		outline-color:#2f2f2f;
		outline: 2px solid; 
		opacity:10;
		margin-left:70px;
		margin-top:100px;
		background:white;
		border-style: groove;
	}
	
#box5{
		width:1200px;
		height:400px;
		color:black;
		outline-color:#2f2f2f;
		outline: 2px solid; 
		opacity:10;
		margin-left:70px;
		margin-top:100px;
		background:white;
		border-style: groove;
	}


button{
 background:#2edaff;
 color:#090cb5;
 height:40px;
border-radius: 10px;
border: 2px #2edaff;


}

h1{
	position: absolute;
	margin-bottom:100px;
	margin-left:550px;
	font-family:Fontleroy Brown NF;
	color:#2f2f2f;
}

h2{
	position: absolute;
	margin-top:-20px;
	margin-left:10px;
	font-family:Sylfaen;
	font-style:italic; 
	
}
h3{
	position: absolute;
	margin-top:10px;
	margin-left:20px;
	font-family:High Tower Text ;
	font-style:italic;
	font-size:21px;
}

h5{
	margin-left:80px;
	font-size:17px;
	text-align:center;
	margin-top:-60px;
	font-family:Dubai Medium;
}
h6{
	margin-left:90px;
	font-size:13px;
	text-align:center;
	font-family:Dubai Medium;
}

p{
	margin-top:60px;
	margin-left:20px;
	font-family:High Tower Text ;
	font-style:italic;
	font-size:21px;
}

li{
font-family:High Tower Text ;
	font-style:italic;
	font-size:21px;
}

#jpg{
height:50px;
width:50px;
 padding:80px;
 margin-top:-30px;
}



.coloumn {
  display:flex ;
}

.row{
	  margin-left:90px;
	   display:flex -1px;
	   margin-top:180px;
}


.coloumn1 {
  display:flex;
}

.row1{
	  margin-left:18px;
	   display:flex 1px;
	   margin-top:20px;
	   
}

.coloumn4 {
  display:flex;
}

.row4{
	  margin-left:10px;
	   display:flex 1px;
	   margin-top:200px;
	   
}



* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: green;
  font-size: 20px;
  font-family:Poor Richard;
  padding: 13px 20px;
  position: absolute;
  margin-top:70px;
  text-align: center;
  background:#2edaff;
}



/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #0af2d7;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.9s ease;
  margin-top:180px;
}

.active {
  background-color: grey;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .7} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .7} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}



#simg{
width:80px;
height:80px;
margin-top:-150px;
margin-left:140px;
position:absolute;

}

#simgs1{
width:250px;
height:180px;
margin-top:-150px;
margin-left:-6px;
position:absolute;
border: 10px solid #2f2f2f;

}

#simgs2{
width:250px;
height:180px;
margin-top:-150px;
margin-left:239px;
position:absolute;
border: 10px solid #2f2f2f;
}

#simgs3{
width:260px;
height:180px;
margin-top:-150px;
margin-left:484px;
position:absolute;
border: 10px solid #2f2f2f;

}

#simgs4{
width:265px;
height:180px;
margin-top:-150px;
margin-left:739px;
position:absolute;
border: 10px solid #2f2f2f;

}

#simgs5{
width:290px;
height:180px;
margin-top:-150px;
margin-left:999px;
position:absolute;
border: 10px solid #2f2f2f;

}

#b1{
margin-left:30px;

}


#b2{
margin-left:80px;
}


#b3{
margin-left:90px;
}


#b4{
margin-left:100px;
}

    </style>
    
    
    
</head>

<body>


<header class="header-fixed">

	<div class="header-limiter">

		<h1>Metro<span> Rent a Car</span></h1>

		<nav>
			<a href="#">Home</a>
			<a href="#">Reservation</a>
			<a href="#">Inquiry</a>
			<a href="#">About</a>
		<a href="#">Contact</a>
			<a><mark>Hotline</mark> +94 771 234 567</a>
		
		</nav>

	</div>

</header>

<!-- You need this element to prevent the content of the page from jumping up -->
<div class="header-fixed-placeholder"></div>

<!-- The content of your page would go here. -->




<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script>

	$(document).ready(function(){

		var showHeaderAt = 150;

		var win = $(window),
				body = $('body');

		// Show the fixed header only on larger screen devices

		if(win.width() > 400){

			// When we scroll more than 150px down, we set the
			// "fixed" class on the body element.

			win.on('scroll', function(e){

				if(win.scrollTop() > showHeaderAt) {
					body.addClass('fixed');
				}
				else {
					body.removeClass('fixed');
				}
			});

		}

	});

</script>


<!-- Demo ads. Please ignore and remove. -->
<script src="http://cdn.tutorialzine.com/misc/enhance/v3.js" async></script>














	<h1>ABOUT US</h1>
				
	<div class="box">
		<div class="head">
				<br><br>
				<h2>Welcome to Metro Rent A Car.com</h2>
				<hr>
				<h3> That wonderful feeling - you start the engine and your adventure begins... </h3>
				<p> At Metro Rent A Car.com everything we do is about giving you the freedom to discover more.<br> We will move mountains to find you the right rental car, and bring you a smooth, hassle-free experience from start to finish.<br>Here you can find out more about how we work. </p>
			<div class="coloumn1">
			<div class="row1">
			<a href="#box2" id="b1"><button>WHAT WE'RE ABOUT</button></a>
			</div><div class="row1">
			<a href="#box3" id="b2"><button>HOW WE WORK</button></a>
			</div><div class="row1">
			<a href="#box4" id="b3"><button>WHY USE US</button></a>
			</div><div class="row1">
			<a href="#box5" id="b4"><button>WHO WE ARE</button></a>
			</div>
			</div>
			</div>
				<div id="img">
		</div>
		</div>
		
		
		
		<div class="coloumn4">
<div class="row4">
<img border="0"  src="img/11.jpg" id="simgs1">
</div>
<div class="row4">
<img border="0"  src="img/13.jpg" id="simgs2">
</div>
<div class="row4">
<img border="0"  src="img/12.jpg" id="simgs3">
</div>
<div class="row4">
<img border="0"  src="img/14.jpg" id="simgs4">
</div>
<div class="row4">
<img border="0"  src="img/15.jpg" id="simgs5">
</div>

</div>
		
		<div id="box2">
		<div class="head2">   
				<br><br>
				<h2>What we're about</h2>
				<hr>
				<h3> We want to make renting a car as simple and personal as driving your own. </h3>
				
				<p> Renting a car brings you freedom, and we'll help you find the right car for you at a great price. But there's much more to us than that. We're here to make renting a car a lot less hassle. </p>
		
<div class="coloumn">
<div class="row">
<img border="0"  src="img/emo.png" id="simg"><h5>We know the service you<br> receive matters</h5><h6>So we use real reviews, genuine <br>customer feedback and our own <br>experience to guide you through your <br>best options.</h6>
</div>
<div class="row">
<img border="0"  id ="simg" src="img/wrld.jpg" ><h5>We work with car hire <br>companies all over the world </h5><h6>From household names to small local<br> specialists - to bring you the cars,<br> choices and deals that make the <br>difference to your trip.</h6>
</div>
<div class="row">
<img border="0"  id ="simg" src="img/car1.jpeg" ><h5>And we stay with you every<br> step of the way</h5><h6>Our customer team is here to support<br> you through your trip, wherever and<br> whenever you need extra help.</h6>
</div>
</div>
</div>
</div>


<div id="box3">
		<div class="head3">
				<br><br>
				<h2>How we work</h2>
				<hr>
				<h3> Making sure you have a great experience every time you rent a car makes us happy. </h3>
				
				<p> We are a broker, so we arrange the car rental on your behalf. We use our massive buying power to bring you great deals. But we're way more than a price comparison site, because we stay with you every step of the way. </p>

<ul>
<li>
Search - You can search our site or our app for the car you want<br></li><br>
<li>Compare - We show you the deals and reviews you need to help you choose<br></li><br>
<li>Book - You pick the car you want, add any extras you'd like - such as Full Protection (our extra cover) or a car seat - and book<br></li><br>
<li>You're all set - We confirm your booking with the car hire company you chose, and confirm everything back to you<br></li><br>
<li>Pick up your car -You take the voucher (on paper or on your app), your credit card, driving licence and passport to pick up your car<br></li><br>
<li>Have a fantastic trip - You drive away and start discovering...<br></li><br>
<li>Enjoy our support - We're here 24/7 to support you - before, during and after your trip<br></li><br>

</ul>



</div>
</div>
 
 <div id="box4">
		<div class="head4">
				<br><br>
				<h2>Why use us</h2>
				<hr>
				<h3> In simple terms, because we bring you unbeatable value and peace of mind throughout your rental car journey. </h3>
				
				<p> We use all our experience - and the experiences of millions of our customers - to bring you the car you need and the quality of service you want. Always at the best price. But don't take our word for it. Take a look at what real people think about Metro Rent A Car.com.

 </p>
 
 
<div class="slideshow-container">

<div class="mySlides fade">
  <div class="text">Excellent service<br><br>
Fast and easy rent a car solution finder. Beside web application Rentalcars have an iPhone application too which is very useful.</div>
</div>

<div class="mySlides fade">
  <div class="text">Rentalcars is our first choice every time<br><br>
We have used Rentalcars both in the UK and abroad for years and have always been very happy with their service and the cars provided. Have recommended them to many friends who have been equally delighted. Thank you.

</div>
</div>





<div class="mySlides fade">
  <div class="text">Rentalcars is our first choice every time<br><br>
We have used Rentalcars both in the UK and abroad for years and have always been very happy with their service and the cars provided. Have recommended them to many friends who have been equally delighted. Thank you.

</div>
</div>


</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

	
			</div>
		</div>




<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>  
 

			
			
<div id="box5">
		<div class="head5">
				<br><br>
				<h2>Who we are</h2>
				<hr>
				<p> Our founders had the simple idea of wanting to make renting cars much better. And we've flourished because our customers love how we work.<br><br><br>
				We started in 2004 as TravelJigsaw. Four years later, we were making 1000 bookings a day. In 2010, we joined the Priceline Group and rebranded as BookMe.com.<br><br><br>
				Fast forward to today and we're making 8 million bookings a year (and counting) in over 60,000 locations across 160 countries.<br><br><br>
				Our amazing growth relies on our fantastic, diverse team. Based in Manchester, our 1,200 colleagues hail from 65 nations: we've succeeded because we cater to everyone, whatever their gender, nationality, language or culture. Check out our Gender Pay Gap report<br><br><br>
				We're proud to be part of the leading family of online travel brands in the world:</p>
</div></div>




<div class="main"> </div>
		<footer class="footer-distributed">

			<div class="footer-left">

				<h3>METRO<span>  RENT A CAR</span></h3>

				<p class="footer-links">
					<a href="#">Home</a>
					·
					<a href="#">Inquiry</a>
					·
					
					<a href="#">About us</a>
					·
				
					<a href="#">Contactus</a>
				</p>

				<p class="footer-company-name">© 2020 METRO RENT A CAR. All Rights Reserved.</p>
			</div>

			<div class="footer-center">

				<div>
					<i class="fa fa-map-marker"></i>
					<p><span>39/4 </span> wellawatha, colombo</p>
				</div>

				<div>
					<i class="fa fa-phone"></i>
					<p>011-5656561</p>
				</div>

				<div>
					<i class="fa fa-envelope"></i>
					<p><a href="mailto:support@company.com">contact@metro_rentacar.com</a></p>
				</div>

			</div>

			<div class="footer-right">

				<p class="footer-company-about">
					<span>About the company</span>
					METRO RENT A CAR  is a blog for web designers, graphic designers, web developers &amp; SEO Learner.
				</p>

				<div class="footer-icons">

					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-linkedin"></i></a>
					<a href="#"><i class="fa fa-github"></i></a>

				</div>

			</div>

		</footer>








</body>

</html>