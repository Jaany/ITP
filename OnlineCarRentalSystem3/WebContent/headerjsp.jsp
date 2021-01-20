<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.header-fixed {
	background-color: #292c2f;
	box-shadow: 0 1px 1px #ccc;
	padding: 20px 40px;
	height: 80px;
	color: #ffffff;
	box-sizing: border-box;
	top: -100px;
	-webkit-transition: top 0.3s;
	transition: top 0.3s;
}

.header-fixed .header-limiter {
	max-width: 1200px;
	text-align: center;
	margin: 0 auto;
}

/*	The header placeholder. It is displayed when the header is fixed to the top of the
	browser window, in order to prevent the content of the page from jumping up. */
.header-fixed-placeholder {
	height: 80px;
	display: none;
}

/* Logo */
.header-fixed .header-limiter h1 {
	float: left;
	font: normal 38px Cookie, Arial, Helvetica, sans-serif;
	line-height: 40px;
	margin: 0;
	color: #2edaff;
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
	font: 16px Arial, Helvetica, sans-serif;
	line-height: 40px;
	float: right;
}

.header-fixed .header-limiter nav a {
	display: inline-block;
	padding: 0 5px;
	text-decoration: none;
	color: #ffffff;
	opacity: 0.9;
}

.header-fixed .header-limiter nav a:hover {
	opacity: 1;
	color: #2edaff;
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

mark {
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
		float: none;
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
</style>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Metro rent a Car</title>


<title>Insert title here</title>
</head>
<body>


	<header class="header-fixed">

		<div class="header-limiter">

			<h1>
				Metro<span> Rent a Car</span>
			</h1>

			<nav>
				<a href="Home.jsp">Home</a> <a href="Book.jsp">Book</a> <a
					href="About.jsp">About</a> <a href="ContactUs.jsp">Contact Us</a> <a
					href="inquiry.jsp">Inquiry</a> <a><mark>Hotline</mark> +94 771
					234 567</a>

			</nav>

		</div>

	</header>

	<!-- You need this element to prevent the content of the page from jumping up -->
	<div class="header-fixed-placeholder"></div>

	<!-- The content of your page would go here. -->




	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
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












</body>
</html>