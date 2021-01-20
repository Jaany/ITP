<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<script src="js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href=" CSS/UserViewMyEvent.css">
<link rel="stylesheet" type="text/css" href=" CSS/insert_rates.css">


<title>Maintenance</title>
<style>

body {
	margin-top: 20px;
	
}

.card {
	margin-bottom: 1.5rem;
	box-shadow: 0 1px 15px 1px rgba(52, 40, 104, .08);
}





.card {
	position: relative;
	display: -ms-flexbox;
	display: flex;
	-ms-flex-direction: column;
	flex-direction: column;
	min-width: 0;
	word-wrap: break-word;
	background-color: #fff;
	background-clip: border-box;
	border: 1px solid #e5e9f2;
	border-radius: .2rem;
}

.card-header:first-child {
	border-radius: calc(.2rem - 1px) calc(.2rem - 1px) 0 0;
}

.card-header {
	border-bottom-width: 1px;
}



.card-header {
	padding: .75rem 1.25rem;
	margin-bottom: 0;
	color: inherit;
	background-color: #fff;
	border-bottom: 1px solid #e5e9f2;
}

.UPPER_card-header {
	border-bottom-width: 5px;
	
}
.UPPER_card-header {
	padding: .75rem 1.25rem;
	margin-bottom: 0;
	color: inherit;
	background-color: #red;
	border-bottom: 1px solid #e5e9f2;
}



nav {
	position: relative;
	margin: 50px;
	width: 260px;
}

nav ul {
	list-style: none;
	margin: 0;
	padding: 0;
}

nav ul li {
	/* Sub Menu */
	
}

nav ul li a {
	display: block;
	background: #ebebeb;
	padding: 10px 15px;
	color: #333;
	text-decoration: none;
	-webkit-transition: 0.2s linear;
	-moz-transition: 0.2s linear;
	-ms-transition: 0.2s linear;
	-o-transition: 0.2s linear;
	transition: 0.2s linear;
}

nav ul li a:hover {
	background: #f8f8f8;
	color: #515151;
}

nav ul li a .fa {
	width: 16px;
	text-align: center;
	margin-right: 5px;
	float: right;
}

nav ul ul {
	background-color: #ebebeb;
}

nav ul li ul li a {
	background: #f8f8f8;
	border-left: 4px solid transparent;
	padding: 10px 20px;
}

nav ul li ul li a:hover {
	background: #ebebeb;
	border-left: 4px solid #3498db;
}

.form-container {
	padding: 70px 70px;
}

center {
	color: #000;
	letter-spacing: 2px;
	font-size: 20px;
	font-family: Poppins;
	text-transform: uppercase;
}


</style>


<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Effort', 'Amount given'],
          ['My all',     100],
        ]);

        var options = {
          pieHole: 0.5,
          pieSliceTextStyle: {
            color: 'black',
          },
          legend: 'none'
        };

        var chart = new google.visualization.PieChart(document.getElementById('donut_single'));
        chart.draw(data, options);
      }
    </script>
</head>
<body>

<div class="container">
		<h1 class="h3 mb-3">Profile</h1>
		<div class="row">
			<div class="col-md-4 col-xl-3">
				<div class="card mb-3">
					<div class="card-header">



						<h5 class="card-title mb-0 text-center">Maintenance Manager</h5>
					</div>
					<div class="card-body text-center">
						<br> <img src="img/ad.png" alt="Marie Salter"
							class="img-fluid rounded-circle mb-2" width="128" height="128">
						<h4 class="card-title mb-0"></h4>
						<br>
						<div>


							<form action="LogoutServlet">
								<div>


									<input type="submit" value="logout"
										class="btn btn-primary btn-sm"> <a
										class="btn btn-primary btn-sm" href="UserViewRegistration.jsp">Settings
										<span class="glyphicon glyphicon-cog"></span>
									</a>

								</div>
							</form>


						</div>
						<br>
						<hr class="my-0">

						<div class="card-body text-center">

							<div>
								<nav class='animated bounceInDown'>
								<ul>
									<li><a href="userProfile.jsp">DashBoard</a></li>
									<li class='sub-menu'><a href='#'>WorkOrders
											<div class='fa fa-caret-down right'></div>
									</a>
										<ul>
											<li><a href="ViewMaintenance.jsp">View Orders</a></li>
											<li><a href="Add_Maintenance_Details.jsp">Add/Delete Orders</a></li>
											<li><a href="Update_Maintenance_Details.jsp">Update Orders</a></li>
										</ul>
									<li><a href="UserViewMyEvent.jsp">Calendar</a></li>
									<li><a href="UserViewMyEvent.jsp">Reports</a></li>
									<li><a href="UserViewMyEvent.jsp">Mail</a></li>
									<li><a href="Statistics.jsp">Statistics</a></li>
									
									
								</ul>





								</nav>





							</div>
						</div>
					</div>


				</div>
			</div>
			<div class="col-md-8 col-xl-9">
				<div class="card" style="height: 1000px;">
					<div class="card-header">
						<h5 class="card-title mb-0">Statistics</h5>
						<div class="card-body h-100"></div>
					
					</div>

	<div id="donut_single" style="width: 900px; height: 500px;"></div>
</body>
</html>