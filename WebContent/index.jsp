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


	<div id="container center-align">
		<div class="row">
			<div class="col s5 m4 l3 offset-s1 offset-m2 offset-l3 mycard">
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

						<ul type="disc">
							<li>List hospitals nearby your location within a desired
								radius.</li>
							<li>List hospitals nearby any place.</li>
							<li>Display nearby hospitals on Google Maps</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col s5 m4 l3 offset-s1 offset-m2 mycard">
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
						<span class="card-title grey-text text-darken-4">About
							Blood Bank<i class="material-icons right">close</i>
						</span>
						<ul type="circle">
							<li>List blood banks nearby your location</li>
							<li>Display result on Google maps for user's convenience.</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col s5 m4 l3 offset-s1 offset-m2 offset-l3 mycard">
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
						<ul type="circle">
							<li>If you are affected by disaster and need some financial
								support, you can request for a loan.</li>
							<li>Your request will be recorded and will be provided to
								those who can really help you.</li>
							<li>We are ready to help you anytime.</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col s5 m4 l3 offset-s1 offset-m2 mycard">
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
						<ul type="circle">
							<li>Enter relief centers.</li>
							<li>List relief centers.</li>
							<li>Donation feature.</li>
							<li>Help me button.</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="fixed-action-btn right" style="bottom: 45px;">
			<a class="btn-floating modal-trigger btn-large white tooltipped"
				style="padding-top: 5px;" data-position="left" data-delay="100"
				data-tooltip="Related Tweets" data-target="tweets"> <i><img
					src="./images/twitter.png"></i>
			</a>
		</div>
		<div style="margin: 10px 26%;">
			<ul class="collapsible popout" data-collapsible="accordion">
				<li>
					<div class="collapsible-header active">
						<i class="material-icons">filter_drama</i>Made By:
					</div>
					<div class="collapsible-body">
						<p>
							<a href="http://amitphulera.com" target="_blank">Amit Phulera</a>,<a
								href="http://manthanjamdagni.com" target="_blank"> Manthan
								Jamdagni</a>,<a href="http://nitinpathak.com" target="_blank">
								Nitin Pathak</a>
						</p>
					</div>
				</li>
			</ul>
		</div>

	</div>

	<!-- DO's & DONT's -->
	<div id="do_modal" class="modal">
		<div class="modal-content">
			<h4>DO's For Surviving Natural Disasters</h4>
			<p>
			<ul>
				<li><h5>Earthquake</h5>"Drop, take cover, and hold on." This
					means you should drop to the ground, get under a sturdy shelter,
					maybe a desk or table, and hold on until the ground stops
					shaking.If outdoors move away from buildings, trees, streetlights,
					and utility wires stay in open.When the earthquake is over, follow
					the instructions of local authorities and put your family's
					emergency plan into place.</li>
				<li><h5>Explosion</h5>Take shelter under a desk or table during
					the explosion, and exit the building as soon as possible once it's
					over.</li>
				<li><h5>Fire</h5>Have a fire evacuation plan for your family
					with multiple routes of escape from all rooms of the house. If you
					live in a multi-level home, consider installing escape ladders in
					the upper levels. If a fire occurs, get out immediately.</li>
				<li><h5>Flood</h5>Listen to the TV or radio for information on
					where the flooding is happening. In the case of a flood warning in
					your area, you may be advised to evacuate; in this case, do so
					immediately. If you are under a flash flood warning, seek higher
					ground immediately.</li>
				<li><h5>Hurricane</h5>If you live in a coastal area, have a
					hurricane plan in place with supplies to cover your home's windows
					and secure outdoor objects. If a hurricane is approaching, listen
					to a local TV or radio station to stay informed, and be prepared to
					evacuate. Before you leave your home, remember to turn off your
					utilities and propane tanks as recommended.</li>
				<li><h5>Terrorist Attack</h5>Watch TV, listen to the radio, and
					check online news sources to determine how authorities suggest you
					react. If you are in immediate danger, quickly leave the area and
					contact local authorities to find out what you should do next.</li>
				<li><h5>Tornado</h5>You should be prepared for a tornado no
					matter where you live. In a tornado situation, take shelter in a
					basement, storm cellar, or the most interior room of your home.
					Stay away from windows, doors, and exterior walls. If you are
					outside and cannot get to shelter, lie flat in a ditch or other low
					location.</li>
			</ul>
			<h5 class="center">"Whatever happens, don't panic."</h5>
			</p>
		</div>
		<div class="modal-footer">
			<a href="#!"
				class=" modal-action modal-close waves-effect waves-green btn">Close</a>
		</div>
	</div>

	<div id="dont_modal" class="modal">
		<div class="modal-content">
			<h4>DO's For Surviving Natural Disasters</h4>
			<p>
			<ul>
				<li><h5>Earthquake</h5>Do not take shelter near glass, windows,
					outside doors and walls, or anything that could fall. If in a
					building don't run for an exit. If in the open don't stand near
					electric poles and cables</li>
				<li><h5>Explosion</h5> Avoid using elevators and be careful of
					hot doors, since there may be fire on the other side.</li>
				<li><h5>Fire</h5>Do not put yourself in danger by placing a
					phone call or gathering your valuables.</li>
				<li><h5>Flood</h5>Never try to do deflooding yourself after the
					flood take help from experts, It's not only water that is
					dangerous, it's the residual odor and bacteria aftermath. If not
					treated, it may cause expensive damage and possible health
					hazards..</li>
				<li><h5>Hurricane</h5>Do not venture out into the storm, Do not
					evacuate unless instructed by officials.</li>
				<li><h5>Terrorist Attack</h5>Don't touch unclaimed objects like
					handbags, mobile phones and tiffin boxes.</li>
				<li><h5>Tornado</h5> Don't use your car as shelter. Don't open
					the windows in your home.Don't use elevators. You could get trapped
					if the power is lost. Don't light candles, even after the storm has
					passed</li>
			</ul>
			</p>
		</div>
		<div class="modal-footer">
			<a href="#!"
				class=" modal-action modal-close waves-effect waves-green btn">Close</a>
		</div>
	</div>

	<div class="fixed-action-btn right" style="bottom: 135px;">
		<a class="btn-floating btn-large tooltipped" data-position="left"
			data-delay="100" data-tooltip="DO's & DONT's"><i
			class="material-icons white" style="color:red;font-size: 36px;">warning</i> </a>
		<ul>
			<li><a class="btn-floating blue modal-trigger"
				data-target="do_modal"><i class="material-icons">thumb_up</i></a></li>
			<li><a class="btn-floating red modal-trigger"
				data-target="dont_modal"><i class="material-icons">thumb_down</i></a></li>
		</ul>
	</div>

	<div id="tweets" class="modal modal-fixed-footer">
		<div class="modal-content" id="tscroll">
			<div class="center">
				<h4>Related Tweets</h4>
				<a class="twitter-timeline"
					href="https://twitter.com/hashtag/ChennaiRainsHelp"
					data-widget-id="698440919234715648">#ChennaiRainsHelp Tweets</a>
			</div>
		</div>
		<div class="modal-footer">
			<a href="#"
				class=" modal-action modal-close waves-effect waves-green btn">Close</a>
		</div>

	</div>
	<script>
		!function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/
					.test(d.location) ? 'http' : 'https';
			if (!d.getElementById(id)) {
				js = d.createElement(s);
				js.id = id;
				js.src = p + "://platform.twitter.com/widgets.js";
				fjs.parentNode.insertBefore(js, fjs);
			}
		}(document, "script", "twitter-wjs");
	</script>
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/materialize.min.js"></script>
	<script>
		$(document)
				.ready(
						function() {
							$('.modal-trigger')
									.leanModal(
											{
												dismissible : false,
												opacity : .90,
												ready : function() {
													$("#twitter-widget-0")
															.height(
																	($(
																			"#tscroll")
																			.height() - 50));
													var css = '<style type="text/css">.inline-media{display:none};</style>';
													$('#twitter-widget-0')
															.contents().find(
																	"head")
															.append(css);
												},
											});
						});
	</script>
</body>
</html>