<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Blood Banks Locator</title>
<link type="text/css" rel="stylesheet" href="css/materialize.min.css"
	media="screen,projection" />
<link type="text/css" rel="stylesheet" href="css/custom.css"
	media="screen,projection" />
<link rel="stylesheet" type="text/css" href="css/mystyle.css">
</head>
<body>
	<div id="gmap_canvas"></div>
	<div class="actions">
		<!-- <div class="button">
			<label for="gmap_where">City:</label> <input id="gmap_where"
				type="text" name="gmap_where" value="Dehradun" />
		</div> -->
		<div id="btn1" class="button" onclick="findPlaces(); return false;">Show
			Blood Banks from Current Location</div>
	</div>

	<div id="modal1" class="modal">
		<div class="modal-content"></div>
		<div class="modal-footer">
			<a class="waves-effect waves-green btn-flat modal-action modal-close">Close</a>
		</div>
	</div>

	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/materialize.min.js"></script>
	<script type="text/javascript" src="https://www.google.com/jsapi"></script>
	<script type="text/javascript"
		src="https://maps.googleapis.com/maps/api/js?libraries=places"></script>
	<script src="js/bloodbanksjs.js"></script>
</body>
</html>