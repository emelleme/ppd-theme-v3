   <!-- start: Map -->
	<div>

		<!-- starts: Google Maps -->
		
		<div id="googlemaps-container-top"></div>
		<div id="googlemaps" class="google-map google-map-full"></div>
		<div id="googlemaps-container-bottom"></div>
		<!-- end: Google Maps -->
		
		<div style="width: 100%; margin-top: -18px; margin-bottom: 12px; text-align: center;"><a style="cursor: row-resize;" id="gmap-resizer"><i class="icon-reorder"></i></a>
		</div>
	</div>
	<!-- end: Map -->	

<div class="container">
				
	<div class="row">
	
      <!-- start: District Search -->
		<div class="span6">
			<div class="heading"><h3>Find My District</h3></div>

				<div class="row">
					<div class="span3">

					<!-- start: Search Form -->
					<div id="contact-form">

						<form id="search-form" method="post" action="districts/searchAddress">

							<fieldset>
								<div class="clearfix">
									<label for="search-address-box"><span>Enter Your Street Address</span></label>
									<div class="input">
										<input tabindex="1" class="district-street-address-input" id="search-address-box" name="name" type="text" value="">
									</div>
								</div>								

								<div class="actions" style="float: left;">
									<button tabindex="3" type="submit" class="btn btn-success">Search</button>
								</div>
								
								<a id="use-location" href="#" style="float: left; margin: 7px 0 0 12px;"><i class="icon-location-arrow"></i>Use Current Location</a>
								<div id="current-location-display" style="display: none;"><p>Where I am right now.</p></div>
							</fieldset>

						</form>

					</div>
					<!-- end: Search Form -->
				</div>
				<div class="span3" id="district-menu">

				<!-- start: Search Results -->
				<!--p>Enter an address or intersection in the search<br>
				   or drag the Home icon to the desired location.</p-->
				</div>
		<!-- end: Search Results -->
		</div>
				
		</div>
		<!-- end: District Search-->	

		<!-- start: Districts -->
		<div class="span6">					
				<div class="row">
				<% loop ROC %>
					<div class="span6">
					<div class="heading"><h3>Districts: ROC North</h3></div>
					</div>
				</div>
				
				<div class="row">
					<div class="span2">
					<h3>East</h3>
					<% loop East %>
					<p><a href="/districts/$DistrictNumber">$DistrictName</a></p>
					<p id="d_$DistrictID" class="district-link viewonmap"><a href="/districts/$DistrictNumber" rel="$DistrictID:$DistrictHQAddress:$DistrictKML:$DistrictName">View on Map</a></p>
					<div id="district_$DistrictID" style="display:none">
					<div id="single_district">
						<p class="muted" style="margin-bottom: 3px;">You are in the:</p>
						<h2>$DistrictName</h2>
						<p><strong>$DistrictHQAddress</strong><br>
						<i class="icon-map-marker"></i> <a href="http://maps.google.com/maps?q=$DistrictHQAddress Philadelphia PA" target="_blank">Google Maps</a><br>
         			<i class="icon-phone"></i> $DistrictPhoneNumber<br>
         			<a href="mailto:$DistrictEmail"><i class="icon-envelope"></i> $DistrictEmail</a></p>

						<div><a href="districts/$DistrictNumber" class="btn btn-info" style="border: none;"><i class="icon-star"></i> Visit $DistrictName Homepage</a></div>
					
					</div><!-- End Single District div -->
					</div>
					<% end_loop %>
					</div>
					
					<div class="span2">
					<h3>Northwest</h3>
					<% loop Northwest %>
					<p><a href="/districts/$DistrictNumber">$DistrictName</a></p>
					<p id="d_$DistrictID" class="district-link viewonmap"><a href="/districts/$DistrictNumber" rel="$DistrictID:$DistrictHQAddress:$DistrictKML:$DistrictName">View on Map</a></p>
					<div id="district_$DistrictID" style="display:none">
					<div id="single_district">
						<p class="muted" style="margin-bottom: 3px;">You are in the:</p>
						<h2>$DistrictName</h2>
						<<p><strong>$DistrictHQAddress</strong><br>
						<i class="icon-map-marker"></i> <a href="http://maps.google.com/maps?q=$DistrictHQAddress Philadelphia PA" target="_blank">Google Maps</a><br>
         			<i class="icon-phone"></i> $DistrictPhoneNumber<br>
         			<a href="mailto:$DistrictEmail"><i class="icon-envelope"></i> $DistrictEmail</a></p>

						<div><a href="districts/$DistrictNumber" class="btn btn-info" style="border: none;"><i class="icon-star"></i> Visit $DistrictName Homepage</a></div>
					
					</div><!-- End Single District div -->
					</div>
					<% end_loop %>
					</div>
					
					<div class="span2">
					<h3>Northeast</h3>
					<% loop Northeast %>
					<p><a href="/districts/$DistrictNumber">$DistrictName</a></p>
					<p id="d_$DistrictID" class="district-link viewonmap"><a href="/districts/$DistrictNumber" rel="$DistrictID:$DistrictHQAddress:$DistrictKML:$DistrictName">View on Map</a></p>
					<div id="district_$DistrictID" style="display:none">
					<div id="single_district">
						<p class="muted" style="margin-bottom: 3px;">You are in the:</p>
						<h2>$DistrictName</h2>
						<p><strong>$DistrictHQAddress</strong><br>
						<i class="icon-map-marker"></i> <a href="http://maps.google.com/maps?q=$DistrictHQAddress Philadelphia PA" target="_blank">Google Maps</a><br>
         			<i class="icon-phone"></i> $DistrictPhoneNumber<br>
         			<a href="mailto:$DistrictEmail"><i class="icon-envelope"></i> $DistrictEmail</a></p>

						<div><a href="districts/$DistrictNumber" class="btn btn-info" style="border: none;"><i class="icon-star"></i> Visit $DistrictName Homepage</a></div>
					
					</div><!-- End Single District div -->
					</div>
					<% end_loop %>
					</div>
				</div>
				
				<hr class="hr30">
				
				<div class="row">
					<div class="span6">
					<div class="heading"><h3>Districts: ROC South</h3></div>
					</div>
				</div>
				
				<div class="row">
					<div class="span2">
					<h3>Central</h3>
					<% loop Central %>
					<p><a href="/districts/$DistrictNumber">$DistrictName</a></p>
					<p id="d_$DistrictID" class="district-link viewonmap"><a href="/districts/$DistrictNumber" rel="$DistrictID:$DistrictHQAddress:$DistrictKML:$DistrictName">View on Map</a></p>
					<div id="district_$DistrictID" style="display:none">
					<div id="single_district">
						<p class="muted" style="margin-bottom: 3px;">You are in the:</p>
						<h2>$DistrictName</h2>
						<p><strong>$DistrictHQAddress</strong><br>
						<i class="icon-map-marker"></i> <a href="http://maps.google.com/maps?q=$DistrictHQAddress Philadelphia PA" target="_blank">Google Maps</a><br>
         			<i class="icon-phone"></i> $DistrictPhoneNumber<br>
         			<a href="mailto:$DistrictEmail"><i class="icon-envelope"></i> $DistrictEmail</a></p>

						<div><a href="districts/$DistrictNumber" class="btn btn-info" style="border: none;"><i class="icon-star"></i> Visit $DistrictName Homepage</a></div>
					
					</div><!-- End Single District div -->
					</div>
					<% end_loop %>
					</div>
					
					<div class="span2">
					<h3>Southwest</h3>
					<% loop Southwest %>
					<p><a href="/districts/$DistrictNumber">$DistrictName</a></p>
					<p id="d_$DistrictID" class="district-link viewonmap"><a href="/districts/$DistrictNumber" rel="$DistrictID:$DistrictHQAddress:$DistrictKML:$DistrictName">View on Map</a></p>
					<div id="district_$DistrictID" style="display:none">
					<div id="single_district">
						<p class="muted" style="margin-bottom: 3px;">You are in the:</p>
						<h2>$DistrictName</h2>
						<p><strong>$DistrictHQAddress</strong><br>
						<i class="icon-map-marker"></i> <a href="http://maps.google.com/maps?q=$DistrictHQAddress Philadelphia PA" target="_blank">Google Maps</a><br>
         			<i class="icon-phone"></i> $DistrictPhoneNumber<br>
         			<a href="mailto:$DistrictEmail"><i class="icon-envelope"></i> $DistrictEmail</a></p>

						<div><a href="districts/$DistrictNumber" class="btn btn-info" style="border: none;"><i class="icon-star"></i> Visit $DistrictName Homepage</a></div>
					
					</div><!-- End Single District div -->
					</div>
					<% end_loop %>
					</div>
					
					<div class="span2">
					<h3>South</h3>
					<% loop South %>
					<p><a href="/districts/$DistrictNumber">$DistrictName</a></p>
					<p id="d_$DistrictID" class="district-link viewonmap"><a href="/districts/$DistrictNumber" rel="$DistrictID:$DistrictHQAddress:$DistrictKML:$DistrictName">View on Map</a></p>
					<div id="district_$DistrictID" style="display:none">
					<div id="single_district">
						<p class="muted" style="margin-bottom: 3px;">You are in the:</p>
						<h2>$DistrictName</h2>
						<p><strong>$DistrictHQAddress</strong><br>
						<i class="icon-map-marker"></i> <a href="http://maps.google.com/maps?q=$DistrictHQAddress Philadelphia PA" target="_blank">Google Maps</a><br>
         			<i class="icon-phone"></i> $DistrictPhoneNumber<br>
         			<a href="mailto:$DistrictEmail"><i class="icon-envelope"></i> $DistrictEmail</a></p>

						<div><a href="districts/$DistrictNumber" class="btn btn-info" style="border: none;"><i class="icon-star"></i> Visit $DistrictName Homepage</a></div>
					
					</div><!-- End Single District div -->
					</div>
					<% end_loop %>
					</div>
				</div>
				<% end_loop %>
		</div>
		<!-- end: Districts -->
		
	</div>	
	
</div>		