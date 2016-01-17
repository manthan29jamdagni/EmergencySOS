<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link type="text/css" rel="stylesheet" href="css/materialize.min.css"
	media="screen,projection" />
<link type="text/css" rel="stylesheet" href="css/custom.css"
	media="screen,projection" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta charset="ISO-8859-1">
<title>Emergency Locator - SOS Help!</title>
</head>
<body>
	<div class="red accent-4 lighten-3 z-depth-2">
		<h1 class="pink-text text-lighten-5 " align="center"
			style="margin-top: 0px;">Emergency Locator - SOS Help!</h1>
		<h5 class="grey lighten-4 grey-text text-darken-1" align="center">We
			Need To Appreciate How Precious Life Is!</h5>
	</div>

	<div class="row">
		<div class="col s12 m3 offset-m3">
			<div class="card hoverable">
				<div class="card-image waves-effect waves-block waves-light">
					<img class="activator" src="images/medical-service.jpg"
						style="margin-top: 20px; margin-left: 20px; height: 175px; width: 270px;">
				</div>
				<div class="card-content">
					<span class="card-title activator grey-text text-darken-4">MediCare<i
						class="material-icons right">add</i>
					</span>
					<p>
						<a href="medicare.jsp">Open</a>
					</p>
				</div>
				<div class="card-reveal">
					<span class="card-title grey-text text-darken-4">About
						MediCare<i class="material-icons right">close</i>
					</span>
					<p>Something goes here...</p>
				</div>
			</div>
		</div>
		<div class="col s12 m3">
			<div class="card hoverable">
				<div class="card-image waves-effect waves-block waves-light">
					<img class="activator" src="images/Blood-Bank.jpg"
						style="margin-top: 20px; margin-left: 20px; height: 175px; width: 270px;">
				</div>
				<div class="card-content">
					<span class="card-title activator grey-text text-darken-4">Blood
						Bank<i class="material-icons right">add</i>
					</span>
					<p>
						<a href="bloodbanks.jsp">Open</a>
					</p>
				</div>
				<div class="card-reveal">
					<span class="card-title grey-text text-darken-4">About Blood
						Bank<i class="material-icons right">close</i>
					</span>
					<p>Something goes here...</p>
				</div>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col s12 m3 offset-m3">
			<div class="card hoverable">
				<div class="card-image waves-effect waves-block waves-light">
					<img class="activator" src="images/financial-aid.jpg"
						style="margin-top: 20px; margin-left: 20px; height: 175px; width: 270px;">
				</div>
				<div class="card-content">
					<span class="card-title activator grey-text text-darken-4">Financial
						Aid<i class="material-icons right">add</i>
					</span>
					<p>
						<a href="financialaid.jsp">Open</a>
					</p>
				</div>
				<div class="card-reveal">
					<span class="card-title grey-text text-darken-4">About
						Financial Aid<i class="material-icons right">close</i>
					</span>
					<p>Something goes here...</p>
				</div>
			</div>
		</div>
		<div class="col s12 m3">
			<div class="card hoverable">
				<div class="card-image waves-effect waves-block waves-light">
					<img class="activator" src="images/help.jpg"
						style="margin-top: 20px; margin-left: 20px; height: 175px; width: 270px;">
				</div>
				<div class="card-content">
					<span class="card-title activator grey-text text-darken-4">Disaster
						Hit SoS<i class="material-icons right">add</i>
					</span>
					<p>
						<a href="sos.jsp">Open</a>
					</p>
				</div>
				<div class="card-reveal">
					<span class="card-title grey-text text-darken-4">About SoS<i
						class="material-icons right">close</i>
					</span>
					<p>Something goes here...</p>
				</div>
			</div>
		</div>
	</div>
	<div style="margin: 10px 26%;">
		<ul class="collapsible popout" data-collapsible="accordion">
			<li>
				<div class="collapsible-header active">
					<i class="material-icons">filter_drama</i>Made By:
				</div>
				<div class="collapsible-body">
					<p>Amit Phulera, Manthan Jamdagni, Nitin Pathak</p>
				</div>
			</li>
		</ul>
	</div>
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/materialize.min.js"></script>
	${faid}
</body>
</html>
