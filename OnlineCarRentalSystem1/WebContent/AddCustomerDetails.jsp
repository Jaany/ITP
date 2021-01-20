<%@page import="service.CustomerImp" %>
<%@page import="service.ICustomer" %>
<%@page import="model.Customer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DBconnection"%>
<%@page import="servlet.AddCustServlet" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
body {
	background-image: url('img/cus.jpg');
	background-size: cover;
	background-attachment: fixed;
}

h1 {
	text-align: center;
}

input[type=text], select {
	width: 80%;
	padding: 12px 20px;
	margin: 5px 50px 20px 40px;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=date], select {
	width: 80%;
	padding: 12px 20px;
	margin: 5px 50px 20px 40px;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=tel], select {
	width: 80%;
	padding: 12px 20px;
	margin: 5px 50px 20px 40px;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=email], select {
	width: 80%;
	padding: 12px 20px;
	margin: 5px 50px 20px 40px;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
	width: 80%;
	padding: 14px 20px;
	margin: 5px 50px 8px 40px;
	border: 2px solid #000000;
	border-radius: 4px;
	background-color: #2edaff;
	color: #000000;
}

input[type=submit]:hover {
	background-color: #007d99;
}

.diform {
	background-color: rgb(0, 0, 0, 0.3);
	padding: 20px;
	font-size: 20px;
	border-radius: 5px;
	width: 35%;
	border: 2px solid #000000;
	margin: auto;
}

label {
	padding: 30px;
	font-weight: bold;
}
</style>]

<%@include file="headerjsp.jsp"%>
<head>
<meta charset="ISO-8859-1">
<title>CustomerDetails</title>
</head>
<body>


<%
      
			DBconnection db = new DBconnection();
           Connection con = db.getconnection();
            if (con == null){
            	out.print("not sure");
            }else{
            	out.print("connected");
            }
            
            
       %>
       
       
	<h1>Customer Details</h1>
	<div class="diform">
		<form action="AddCustServlet" method="post" id="add">
			<label for="fname">First Name</label> <br> <input type="text"
				id="fname" name="FirstName" placeholder="fname"> <br> <label
				for="lname">Last Name</label> <br> <input type="text"
				id="lname" name="LastName" placeholder="lname"> <br> <label
				for="NIC">NIC</label> <br> <input type="text" id="nic"
				name="NIC" placeholder="0000000000"> <br> <label
				for="lno">License Number</label> <br> <input type="text"
				id="lno" name="LicenseNum" placeholder="License Number"> <br>
			<label for="end date">License End Date</label> <br> <input
				type="date" id="end" name="LicenseEndDate" placeholder="Date">
			<br> <label for="address">Address</label> <br> <input
				type="text" id="addr" name="Address" placeholder="address">
			<br> <label for="phone">Contact Number</label> <br> <input
				type="tel" id="phone" name="Phone" placeholder="phone no"> <br>
			<label for="email">E-mail</label> <br> <input type="email"
				id="email" name="Email" placeholder="email"> <br> <br>
			<input type="submit" value="SUBMIT" name="Add">
		</form>
	</div>
	
	
	
	
 <table border="2">
    <caption><h3><center>Customer Details</center></h3></caption> 
         		<thead>
         		<tr>
         		<th>FirstName</th>
         		<th>LastName</th>
         		<th>NIC</th>
         		<th>LicenseNum</th>
         		<th>LicenseEndDate</th>
         		<th>Address</th>
         		<th>Phone</th>
         		<th>Email</th>
         		<th></th>
         		<th></th>
         	</tr>	
         	
         	     		
     		
         		</thead>
         		
         						
            <%
            ICustomer icustomer = new CustomerImp();
			ArrayList<Customer> arrayList = icustomer. get_Customer_details();
				
			
			for(Customer customer : arrayList){
			%>
			
			
			
			 <tr>
				<td> <%=customer.getFirstName() %> </td>
				<td> <%=customer.getLastName() %> </td>
				<td> <%=customer.getNIC() %> </td>
				<td> <%=customer.getLicenseNum() %> </td>
				<td> <%=customer.getLicenseEndDate() %> </td>
				<td> <%=customer.getAddress() %> </td>
				<td> <%=customer.getPhone() %> </td>
				<td> <%=customer.getEmail() %> </td>
				
						
						
						
						
						
			<td><a href="Update_Customer_Details.jsp?NIC=<%=customer.getNIC() %>"><button >Select</button></a></td>
												
			<td><form method="POST" action="DeleteCustomerServlet?NIC=<%=customer.getNIC()%>"><button>Delete</button></form></td>
				
				
				
			</tr>
			 
				
			
			
				
			
						
					
			<%	
			   }
            %> 
    
    
    
    </table>
            



	
</body>
<%@include file="footer.jsp"%>
</html>