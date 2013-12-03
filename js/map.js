var coords;
var geocode;
var map;
var mgr;
var netmkr;
var mapcenter;
var markers = [];
var homemarker = [];
var districtmarker = [];
var currentcenter ='';
var savedMarkers = [];
var savedMarkerType = [];
var savedInfoWindows = [];
var activemarker = [];
var activeinfowin = [];
var activenetwork;
var iconsize = new google.maps.Size(64,33);
var iconscale = new google.maps.Size(40,24);
var icondot = new google.maps.Size(16,14);
var iconorigin = google.maps.Point(0,0);
var iconanchor = google.maps.Point(0,0);

//Create Markers //
var goldicon = new google.maps.MarkerImage('assets/icons/icons/goldcam.png',iconsize,iconorigin,iconanchor,iconscale);
var blueicon = new google.maps.MarkerImage('assets/icons/icons/bluecam.png',iconsize,iconorigin,iconanchor,iconscale);
var doticon = new google.maps.MarkerImage('assets/icons/icons/bluecam.png',icondot,iconorigin,iconanchor,icondot);



var shadowimage = new google.maps.MarkerImage(
 'assets/icons/icons/shadow.png',
 new google.maps.Size(123,75),
 new google.maps.Point(0,0),
 new google.maps.Point(0,0),
 new google.maps.Size(40,37)
);

//Initialize Camr Map Styles//
var camrStyles = [
  {
    featureType: "administrative.locality",
    elementType: "all",
    stylers: [
      { visibility: "off" }
    ]
  },{
    featureType: "administrative.land_parcel",
    elementType: "all",
    stylers: [
      { visibility: "on" },
      { gamma: 2.39 },
      { hue: "#004cff" },
      { lightness: -49 }
    ]
  },{
    featureType: "landscape.man_made",
    elementType: "all",
    stylers: [
      { lightness: 60 }
    ]
  },{
    featureType: "road.local",
    elementType: "all",
    stylers: [

    ]
  },{
    featureType: "poi.school",
    elementType: "all",
    stylers: [
      { invert_lightness: false },
      { lightness: 24 }
    ]
  },{
    featureType: "poi.medical",
    elementType: "all",
    stylers: [
      { invert_lightness: false },
      { lightness: 46 }
    ]
  },{
    featureType: "poi.park",
    elementType: "all",
    stylers: [
      { invert_lightness: false },
      { lightness: 22 }
    ]
  },{
    featureType: "transit.station",
    elementType: "all",
    stylers: [
      { visibility: "on" },
      { gamma: 0.59 }
    ]
  },{
    featureType: "administrative.neighborhood",
    elementType: "all",
    stylers: [
      { gamma: 0.51 }
    ]
  },{
    featureType: "all",
    elementType: "all",
    stylers: [

    ]
  },{
    featureType: "all",
    elementType: "all",
    stylers: [

    ]
  }
];

$(document).ready(function(){
	var maptypeoptions = {
		mapTypeIds: [google.maps.MapTypeId.HYBRID,google.maps.MapTypeId.ROADMAP]
	};
	
	var navoptions = {
		style: google.maps.NavigationControlStyle.LARGE,
		mapTypeIds: [google.maps.MapTypeId.SATELLITE, 'camrmap']
	};
	
	var pegman = true;
	var myOptions = {
	      zoom: 11,
	      mapTypeId: 'camrmap',
	      scrollwheel: false,
	      mapTypeControlOptions: {
     mapTypeIds: [google.maps.MapTypeId.HYBRID, 'camrmap']
  },
	      navigationControlOptions: navoptions
    };
    
	// Create Map //
    map = new google.maps.Map(document.getElementById("googlemaps"),myOptions);
    map.setTilt(45);
	map.setHeading(90);
	
	google.maps.event.addListener(map, 'zoom_changed', function() {
		//Show district overlays if loaded
		var curzoom = map.getZoom();
	 	
		if(curzoom >=18)	districtsLayer.setOptions({query: {
					select: 'Boundaries',
					from: '2103550',
					where: "dNumber = 88"
				  },styles:[{
				polygonOptions: {
					fillColor: "#3D6283",
					strokeColor: "#3D6283",
					strokeOpacity: "0.7",
					strokeWeight: "int",
					fillOpacity:"0.05"
			}}]});
		
  	});
	var styledMapOptions = {
     name: "Map"
  }


var camrMapType = new google.maps.StyledMapType(
camrStyles, styledMapOptions);
      map.mapTypes.set('camrmap', camrMapType);
	//map.setMapTypeId(google.maps.MapTypeId.SATELLITE);
  
// Load Markers //
var mgrOptions = {
     trackMarkers: true
  }
mgr = new MarkerManager(map,mgrOptions);
google.maps.event.addListener(mgr, 'loaded', function(){
	//console.log('loaded');

});
	
	$('.district-link a').on('click',function(){
		var info = $(this).attr('rel').split(":");
		var district = info[0];
		kmlid = info[2];
		var dinfo = $('#district_'+district).clone().show();
		$("#district-menu").html(dinfo);
		//console.log(info[3])
		//Hide all Districts
		
		//console.log(map.getZoom());
		
		//currentLayer.setMap(null);
		geocoder.geocode( { 'address': info[1]+", Philly, PA"}, function(results, status) {
			map.setCenter(results[0].geometry.location);
			districtmarker.setPosition(results[0].geometry.location);
			districtmarker.setVisible(true);
			districtmarker.setMap(map);
			
			var infowindow = new google.maps.InfoWindow({
				content: "<p>"+info[3]+" Headquarters</p>"+info[1]
			});
			google.maps.event.addListener(districtmarker, 'click', function() {
			  infowindow.open(map,districtmarker);
			});
			var pos = new google.maps.LatLng(results[0].geometry.location);
			//currentLayer.setMap(map);
			districtsLayer.setOptions({
				  query: {
					select: 'PSABoundaries',
					from: '2103550',
					where: "dNumber ="+info[0]
				  },
			  styles: [{
				polygonOptions: {
					strokeColor: "#3D6283",
					strokeOpacity: "0.7",
					strokeWeight: "int",
					fillOpacity:"0.1"
			}}]
			});
			
			
			var curzoom = map.getZoom();
		 	if(curzoom <13)	map.setZoom(13);
			
		});
		
		var dmenu = "#district-menu";
		/*$.post("/districts/getInfo?kmlid="+kmlid, function (data){
			$(dmenu).html(data);
			var infowindow = new google.maps.InfoWindow({
			content: data
			});
		
			activemarker[0]=districtmarker;
		
			infowindow.open(map, districtmarker);
			savedInfoWindows[0] = infowindow;
		});*/
		return false;
	});

	 $('#use-location').bind('click', function(e) {
	 	e.preventDefault();
        if (navigator.geolocation) {
            $('#location-option i.icon-loading').show();
            navigator.geolocation.getCurrentPosition(geoLocationSuccess, geoLocationFailed);
        } else {
            $('#location-option i.icon-loading').hide();
            alert('Your browser does not support geo-location detection.');
        }
    });

	 function geoLocationSuccess(position) {
	 	console.log(position)
        currentLocation = position.coords;
        $('#current-location-display').show();
        if(currentLocation.accuracy >= 5000){
        	$('#current-location-display span').text('Sorry, we are unable to determine your location at this time. :(');
        }else{
        	var $googleMap = $('.google-map-full');
        	 var currHeight = $googleMap.height();
		    var nextHeight = currHeight === 300 ? 450 : 450;
		    $googleMap.css('height', nextHeight + 'px');

		    $('html, body').animate({
		        scrollTop: $("#googlemaps-container-top").offset().top
		    }, 1000);
        	$('#current-location-display p').text('Note: Location is Approximate.');
        	//re-center map to location, and calculate district
        	var loc = new google.maps.LatLng(currentLocation.latitude,currentLocation.longitude);
        	homemarker.setPosition(loc);
			homemarker.setVisible(true);
			homemarker.setMap(map);
			currentcenter = '('+currentLocation.latitude+','+currentLocation.longitude+')';
			$("#latlng").val(currentcenter);
			map.setCenter(loc);
			//Move Home Icon to location
			var form = $('#search-form');
			$.get(form.attr("action")+"?latlng="+currentcenter, function(data) {
				
				var dInfo = data.split('.');
				var districtdiv = $("#district_"+dInfo[0]).html();
				
				//Get district address and display district icon marker
				var curdistrict = $('#d_'+dInfo[0]+' a').attr('rel').split(":");
				var curdistaddy = curdistrict[1];
				geocoder.geocode( { 'address': curdistaddy+", Philly, PA"}, function(results, status) {
					districtmarker.setPosition(results[0].geometry.location);
					districtmarker.setVisible(true);
					districtmarker.setMap(map);
				});
				$("#district-menu").html(districtdiv);
				//console.log(dInfo[0]);
				districtsLayer.setOptions({query: {
						select: 'PSABoundaries',
						from: '2103550',
						where: "dNumber = "+dInfo[0]
					  },styles:[{
					polygonOptions: {
						strokeColor: "#3D6283",
						strokeOpacity: "0.7",
						strokeWeight: "int",
						fillOpacity:"0.1"
				}}]});
				
				var info = $('#district_'+dInfo[0]).clone().show();
				$("#district-menu").html(info);
				
			});
			var curzoom = map.getZoom();
		 	if(curzoom <15)	map.setZoom(15);
        }
        //$('#use-location').hide();
        $('#location-option i.icon-loading').hide();
    }

	function geoLocationFailed() {
	    alert('Unable to detect your current location.');
	    $('#location-option i.icon-loading').hide();
	}

	function updateStreetAddress(address) {
	    $('#street-address').val(address);
	}

	$('#cancel-current-location').bind('click', cancelCurrentLocationDisplay);

	function cancelCurrentLocationDisplay() {
	    $('#current-location-display').hide();
	    $('#location-option').show();
	    $('#street-address').show();
	    currentLocation = null;
	}

});

