<%@page import="com.jaunt.UserAgent"%>
<%@page import="com.jaunt.JNode"%>
<%@page import="com.jaunt.JauntException"%>
<%@page import="org.bson.json.JsonParseException"%>
<%@page import="com.mongodb.Block"%>
<%@page import="org.bson.Document"%>
<%@page import="com.mongodb.client.FindIterable"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.mongodb.MongoClient" %>
<%@page import="com.mongodb.client.MongoDatabase" %>
<%@page import="java.util.*" %>
<%@page import="java.io.PrintWriter" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SoS</title>
<link type="text/css" rel="stylesheet" href="css/materialize.min.css"
	media="screen,projection" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
	<div class="row ">
		<div class="col s12 m4 offset-m2">
			<div class="card small black-text grey lighten-4 hoverable">
				<div class="card-content ">
					<span class="card-title black-text">Enter Relief Center</span>
					<p>If you are aware of any help centers nearby your place, then
						please help us in helping someone</p>
				</div>
				<div class="card-action teal white-text">
					<a style="cursor: pointer;" id="enterform">Enter Relief Center</a>
				</div>
			</div>
		</div>

		<div class="col s12 m4">
			<div class="card small black-text grey lighten-4 hoverable">
				<div class="card-content ">
					<span class="card-title black-text">Search Relief Centers</span>
					<p>If you have been affected with disasters and searching for
						relief centers</p>
				</div>
				<div class="card-action teal white-text">
					<a style="cursor: pointer;" id="searchall">Search Relief Center</a>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col s12 m4 offset-m2 ">
			<div class="card small black-text hoverable grey lighten-4">
				<div class="card-content ">
					<span class="card-title black-text">Donate</span>
					<p>Please help us by donating a bit from your immense wealth,
						you know a glass from an ocean will not affect it's volume</p>
				</div>
				<div class="card-action teal white-text">
					<a style="cursor: pointer;" id="donation">Donate</a>
				</div>
			</div>
		</div>


		<div class="col s12 m4">
			<div class="card small black-text hoverable grey lighten-4">
				<div class="card-content ">
					<span class="card-title black-text">Help Me!</span>
					<p>In danger?</p>
					<p>Click It... You will be provided with immediate support</p>
				</div>
				<div class="card-action teal white-text">
					<a style="cursor: pointer;" id="helpme">Send Me Help</a>
				</div>
			</div>
		</div>
	</div>

	<div id="donate" class="modal">
		<form class="col s12" method="post" action="Donate">
			<div class="modal-content">
				<h4 class="black-text">Donate Us A Bit</h4>
				<div class="row">
					<div class="row">
						<div class="input-field col s6">
							<input id="first_name" name="fname" type="text" class="validate">
							<label for="first_name">First Name</label>
						</div>
						<div class="input-field col s6">
							<input id="last_name" type="text" name="lname" class="validate">
							<label for="last_name">Last Name</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12">
							<input id="amount" type="text" class="validate" name="amount">
							<label for="amount">Amount</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12">
							<textarea id="textarea1" class="materialize-textarea"
								name="address"></textarea>
							<label for="textarea1">Address</label>
						</div>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button onclick="submit" class="waves-effect waves-light btn">Submit</button>
			</div>
		</form>
	</div>

	<div id="enter" class="modal">
		<form class="col s12" method="post" action="Relief">
			<div class="modal-content">
				<h4 class="black-text">Enter Relief Center</h4>
				<div class="row">
					<div class="row">
						<div class="input-field col s12">
							<input id="place" name="place" type="text" class="validate">
							<label for="place">Place</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12">
							<input id="item" type="text" class="validate" name="item" >
							<label for="item">Items Available</label>
						</div>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button onclick="submit" class="waves-effect waves-light btn">Submit</button>
			</div>
		</form>
	</div>

	<div id="help" class="modal">
		<div class="modal-content">
			<h4 class="black-text">Request Recorded</h4>
			<br />
			<h5 class="blue-text">Help will be send to you as soon as possible...</h5>
		</div>
		<div class="modal-footer">
			<button
				class="waves-effect waves-light btn-flat modal-action modal-close">Close</button>
		</div>
	</div>

	<div id="search" class="modal">
		<div class="modal-content">
			<h4 class="black-text">Relief Centers</h4>
			<table>
		        <thead>
		          <tr>
		              <th>S.No</th>
		              <th>Relief Centers</th>
		              <th>Items Available</th>
		          </tr>
		        </thead>
		
		       <tbody id="tra"> 
		       			
		       	<%
						final PrintWriter outp = new PrintWriter(response.getWriter());
						MongoClient mongoClient = new MongoClient();
						MongoDatabase mongoDatabase = mongoClient.getDatabase("temptgmc");
						FindIterable<Document> iterable =mongoDatabase.getCollection("relief").find();
						iterable.forEach(new Block<Document>(){
							public void apply(final Document document){
								String text=document.toJson();
								
								try
								{	
									UserAgent userAgent = new UserAgent();
									userAgent.openJSON(text);
									JNode searchResultPlace = userAgent.json.findEvery("Place");
									JNode searchResultItems = userAgent.json.findEvery("Item");
									  System.out.println("Search result for Place:\n" + searchResultPlace);
									  System.out.println("Search result for Item:\n" + searchResultItems);
									  String Plc=searchResultPlace.toString();
									  Plc=Plc.substring(2,(Plc.length()-3));
									  System.out.println("Actual Answer for Place: "+Plc);
									  String itm=searchResultItems.toString();
									  itm=itm.substring(2,(itm.length()-3));
									  System.out.println("Actual Answer for Items:"+itm);
									  outp.println("<script type=\"text/javascript\" src=\"js/jquery-2.1.4.min.js\"></script>");
									  outp.println("<script>$(function(){$('#tra').append(\"<tr><td></td><td>"+Plc+"</td><td>"+itm+"</td></tr>\")});</script>");
									}  
								catch(JauntException e){e.printStackTrace();}								  
								
							}
							
						});
						
						mongoClient.close();
						%>
					</tbody>
		      </table>
            
		</div>
		<div class="modal-footer">
			<a class="waves-effect waves-green btn-flat modal-action modal-close">Close</a>
		</div>
	</div>

	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/materialize.min.js"></script>
	<script type="text/javascript">
		$("#donation").on('click', function() {
			$('#donate').openModal();
		});
		$("#enterform").on('click', function() {
			$('#enter').openModal();
		});
		$("#helpme").on('click', function() {
			$('#help').openModal();
		});
		$("#searchall").on('click', function() {
			$('#search').openModal();
			
		});
	</script>
</body>

</html>