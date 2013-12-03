var homeimage = new google.maps.MarkerImage(
	'assets/map/icons/home.png',
	new google.maps.Size(26,40),
    new google.maps.Point(0,0),
    new google.maps.Point(13,40)
);

var shadowimage = new google.maps.MarkerImage(
 'assets/icons/icons/homeshadow.png',
new google.maps.Size(50,40),
    new google.maps.Point(0,0),
    new google.maps.Point(13,40)
);

var shieldimage = new google.maps.MarkerImage(
 'assets/map/icons/icon-map-badge.png',
 new google.maps.Size(116,128),
 new google.maps.Point(0,0),
 new google.maps.Point(24,29),
 new google.maps.Size(58,64)
);
var districtsArray = [];
//$.getJSON('/map/initialLoad.json', function(data) {
  	geocoder = new google.maps.Geocoder();
  	
	
var districtsLayer = new google.maps.FusionTablesLayer({
	query: {
	select: 'PSABoundaries',
	from: '1WUv2b8hhZo-oyG0tau0cMmOcLRWC1AlxhBdtUv8',
	where: "dNumber > 0"
	},
	styles: [{
	polygonOptions: {
		strokeColor: "#3D6283",
		strokeOpacity: "0.7",
		strokeWeight: "int",
		fillOpacity:"0.3"
	}}]
});

$(document).ready(function(){		 	
geocoder.geocode( { 'address': 'Philadelphia, Pa'}, function(results, status) {
	if (status == google.maps.GeocoderStatus.OK) {
		$mapcenter = results[0].geometry.location;
		//$mapcenter =google.maps.Point(39.952335,-75.16378900000001);
		districtmarker = new google.maps.Marker({
  			position:$mapcenter,
  			title: "District HQ",
  			icon: shieldimage
		});
		districtmarker.setDraggable(false);
		//Add District Layer
		
		districtsLayer.setMap(map);
		
		//console.log(map);
		
		var pos = new google.maps.LatLng($mapcenter);
		homemarker = new google.maps.Marker({
  			position: $mapcenter,
  			title: "Current Location"
		});
		homemarker.setDraggable(false);
		homemarker.setMap(map);
		/*google.maps.event.addListener(homemarker, 'dragend', function() {
			//reverse geocode
			var latlng = homemarker.getPosition();
			geocoder.geocode({'latLng': latlng}, function(results, status) {
			  if (status == google.maps.GeocoderStatus.OK) {
				if (results[1]) {
				//Address found.
				$("#current-location").text(results[1].formatted_address);
	            $("#search-address-box").val(results[1].formatted_address);
	            map.setCenter(latlng);
	            
				}else{
					//Address not found. handle error
				}
			}
			});
	  	}); */
	  	
		// Click Event on home mark //
		// Set Map Center to Address //
		map.setCenter(results[0].geometry.location);
	}
});
});	



/* Search form submit */
$('#search-form').submit(function(e) {
	var form = $(this);
	var addy = $("#search-address-box").val();
	var dmenu = "#district-menu";

	//Scroll Page and expand map
	var $googleMap = $('.google-map-full');

    var currHeight = $googleMap.height();
    var nextHeight = currHeight === 300 ? 450 : 450;
    $googleMap.css('height', nextHeight + 'px');

    $('html, body').animate({
        scrollTop: $("#googlemaps-container-top").offset().top
    }, 1000);
	
	//Geocode Address Client Side, and pass to server
	//Clear the district menu
   
	geocoder.geocode( { 'address': addy+'Philadelphia, Pa'}, function(results, status) {
 	homemarker.setPosition(results[0].geometry.location);
	homemarker.setVisible(true);
	homemarker.setMap(map);
	
	
	if (status == google.maps.GeocoderStatus.OK) {
		currentcenter = results[0].geometry.location.toString();
		$("#latlng").val(currentcenter);
		map.setCenter(results[0].geometry.location);
		//Move Home Icon to location
		$.get(form.attr("action")+"?latlng="+currentcenter, function(data) {
			
			var dInfo = data.split('.');
			var districtdiv = $("#district_"+dInfo[0]).html();
			
			//Get district address and display district icon marker
			var curdistrict = $('#d_'+dInfo[0]+' a').attr('rel').split(":");
			var curdistaddy = curdistrict[1];
			var infowindow = new google.maps.InfoWindow({
				content: "<p>"+dInfo[0]+" Head Quarters</p>"+curdistrict[1]
			});
			google.maps.event.addListener(districtmarker, 'click', function() {
			  infowindow.open(map,districtmarker);
			});
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
	}else{
		$(dmenu).html("<h3>Invalid Address.</h3>");
	}});
    
		//Get current marker//
	
	// client-side validation OK.
	if (!e.isDefaultPrevented()) {
		
	
		e.preventDefault();
	}
});

/* Save the Data */
