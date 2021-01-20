<%@page import="service.InquiryImp" %>
<%@page import="service.I_Inquiry" %>
<%@page import="model.Inquiry"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DBconnection"%>
<%@page import="servlet.AddInquiryServlet" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
body {
	background-image: url('img/in.jpg');
	background-size:cover;
	background-repeat: no-repeat;
}

h1 {
	color: #000000;
	font-size: 40px;
	text-align: center;
}

.we {
	color: white;
	font-size: 30px;
	font-weight: bold;
	padding: 10px 30px 5px 40px;
}

.divform {
	background-color: rgb(0, 0, 0, 0.5);
	padding: 20px;
	border-radius: 5px;
	width: 60%;
	border: 2px solid #000000;
	margin: auto;
}

label {
	font-size: 20px;
	padding: 35px;
	color: white;
}

.help {
	font-size: 25px;
	padding: 10px 30px 5px 40px;
	color: white;
}

#name {
	width: 50%;
	padding: 12px 20px;
	margin: 5px 50px 20px 150px;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

#booking {
	width: 50%;
	padding: 12px 20px;
	margin: 5px 50px 20px 45px;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=email], select {
	width: 50%;
	padding: 12px 20px;
	margin: 5px 50px 10px 150px;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
	width: 50%;
	padding: 14px 20px;
	margin: 5px 50px 8px 150px;
	border: 2px solid #000000;
	border-radius: 4px;
	background-color: #2edaff;
	color: #000000;
	font-weight: bold;
}

input[type=submit]:hover {
	background-color: #007d99;
}

textarea {
	margin: 10px 30px 5px 40px;
}
</style>

<%@include file="headerjsp.jsp"%>
<head>

<meta charset="ISO-8859-1">
<title>Inquiry</title>
</head>
<body>
	
	<%
      
			DBconnection db = new DBconnection();
           Connection con = db.getconnection();
           
            
       %>

       
	<h1>Inquiry</h1>
	
	 <form class="form-container" action="AddInquiryServlet"  method="post"  id="add">
	
	
	<div class="divform">
		<p class="we">We are here to help you</p>
		<form>
			<label for="name">Name</label> 
			<input type="text" id="name" name="Name" placeholder="Name"> 
			<br> 
			
			
			<label for="booking">Booking Reference</label> 
			<input type="text" id="booking" name="Booking" placeholder="booking reference">
			<br> 
			
			<label for="email">Email</label> 
			<input type="email" id="email" name="Email" placeholder="123...@gmail.com"> 
			<br>
			
			<label for="problem">What is your problem based on?</label><br>

			<input type="radio" name="Problem" value="extend"> 
			<label for="extend">Extend Reservation Date</label> 
			<br> 
			
			<input type="radio" name="Problem" value="cancel"> 
			<label for="cancel">Cancel Reservation</label> 
			<br> 
			
			<input type="radio" name="Problem" value="change"> 
			<label for="change">Change your details</label>
			<br> 
			
			<input type="radio" name="Problem" value="others"> 
			<label for="others">Other issues</label> 
			<br> </br> <br> 
			
			<label for="comment">Comments</label> 
			<br>
			<textarea rows="8" cols="90" name="Comment" placeholder="Type here...."></textarea>
			<br> <br> <input type="submit" value="Submit">

		</form>
	</div>
</body>
<%@include file="footer.jsp"%>
</html>