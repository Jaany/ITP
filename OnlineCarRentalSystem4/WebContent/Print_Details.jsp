<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>

label{
margin-left:130px;


}

#vid{

margin-left:5px;
height:30px;
width:330px;
}


#rid{

margin-left:5px;
height:30px;
width:330px;
}


#sd{

margin-left:5px;
height:30px;
width:330px;
}


#ed{

margin-left:5px;
height:30px;
width:330px;
}



#de{

margin-left:5px;
height:30px;
width:330px;
}


#mc{

margin-left:5px;
height:30px;
width:330px;
}


#form{
margin-top:80px;
margin-left:500px;
width:350px;
height:530px;
background:white;
outline-color:#2f2f2f;
outline: 2px solid; 
}


#b1{
margin-left:150px;
margin-top:10px;
}


h1{
margin-left:500px;
}

</style>



</head>
<body>

<h1>Print Details</h1>
	<form action ="#"  method = "post" id="form">
		<br><br>
		<label>VehicleID</label>
		<input type="text" name="VehicleID" id="vid"><br><br>
		<label>RepairID</label>
		<input type="text" name="RepairID" id="rid"><br><br>
		<label>Start Date</label>
		<input type="date" name="Start Date" id="sd"><br><br>
		<label>End Date</label>
		<input type="date" name="End Date" id="ed"><br><br>
		<label>Description</label>
		<input type="text" name="Description" id="de"><br><br>
		<label>Maintenance Cost</label>
		<input type="text" name="Maintenance Cost" id="mc"><br><br>
	
		<p><input type="submit" name="Add" value="print" id="b1"></p>
	
	</form>
	

</body>
</html>