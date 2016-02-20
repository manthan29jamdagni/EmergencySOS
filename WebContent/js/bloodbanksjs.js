var geocoder;
var map;
var markers = Array();
var infos = Array();

function initialize() {
	// prepare Geocoder
	geocoder = new google.maps.Geocoder();

	// set initial position (DEHRADUN)
	var myLatlng = new google.maps.LatLng(30.3164945, 78.0321918);

	var myOptions = { // default map options
		zoom : 14,
		center : myLatlng,
		mapTypeId : google.maps.MapTypeId.ROADMAP
	};
	map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);
}

// clear overlays function
function clearOverlays() {
	if (markers) {
		for (i in markers) {
			markers[i].setMap(null);
		}
		markers = [];
		infos = [];
	}
}

// clear infos function
function clearInfos() {
	if (infos) {
		for (i in infos) {
			if (infos[i].getMap()) {
				infos[i].close();
			}
		}
	}
}

// find custom places function
function findPlaces() {
	var myLatLng = {
		lat : 30.3342243,
		lng : 78.0176667
	};

	var map = new google.maps.Map(document.getElementById('gmap_canvas'), {
		zoom : 14,
		center : myLatLng
	});

	var marker = new google.maps.Marker({
		position : myLatLng,
		map : map,
		title : 'IMA Blood Bank, Dehradun'
	});

	var infowindow = new google.maps.InfoWindow(
			{
				content : '<font style="color:#000;">'
						+ 'IMA Blood Bank Of Uttarakhand'
						+ '<br />Rating: '
						+ '4'
						+ '<br />Vicinity: '
						+ '#47 Ballupur Road,Alakapuri,Near ONGC Hospital, Dehradun, Uttarakhand 248001, India <br />Phone: +91 135 275 5010'
						+ '</font>'
			});

	// add event handler to current marker
	google.maps.event.addListener(marker, 'click', function() {
		clearInfos();
		infowindow.open(map, marker);
	});
	infos.push(infowindow);

}

// initialization
google.maps.event.addDomListener(window, 'load', initialize);
