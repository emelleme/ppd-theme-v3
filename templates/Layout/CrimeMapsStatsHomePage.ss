   <!-- start: Map -->
	<div>

		<!-- starts: Google Maps -->
		
		<div id="googlemaps-container-top"></div>
		<iframe id="crimemapper" class="google-map google-map-full" src="http://dev.phillypolice.com/crime-maps-stats/map.html" style="border:0px #FFFFFF none;" name="mapPage" scrolling="no" frameborder="1" marginheight="0px" marginwidth="0px" height="600px" width="100%" style="width: 100%; margin-top: -18px; margin-bottom: 12px; text-align: center;">
      </iframe>
		<div id="googlemaps-container-bottom"></div>
		
      <div style="width: 100%; margin-top: -18px; margin-bottom: 12px; text-align: center;"><a style="cursor: row-resize;" id="cmap-resizer"><i class="icon-reorder"></i></a></div>
      
		<!-- end: Google Maps -->
		
	</div>
	<!-- end: Map -->
	
<div class="container">
				
	<div class="row">
	
		<div class="span7">
		
			<div class="heading"><h3>Current Crime Stats</h3></div>
			
			<p>The homicide statistics for 2013 represent the daily count (statistics reflect the accurate count during normal business hours, Monday through Friday) and year-to-date total for victims of homicide and are subject to reclassification according to the rules and regulations of the FBI's Uniform Crime Reports (UCR) guidelines. The homicide statistics above for years 2012, 2011, 2010, 2009, 2008 and 2007 have been submitted to the FBI as the final UCR numbers for the City of Philadelphia.</p>
			
			<h4>Homicide Victims</h4>
			
			<% if Homicidesv2 %>
         <% loop Homicidesv2 %>

			<table id="homicide-stats" class="table table-bordered">
            <thead>
               <tr>
                  <th class="col-0">YEAR-TO-DATE</th>
                  <th class="col-1 current-year">2013</th>
                  <th class="col-2">2012</th>
                  <th class="col-3">2011</th>
                  <th class="col-4">2010</th>
                  <th class="col-5">2009</th>
                  <th class="col-6">2008</th>
                  <th class="col-7">2007</th>
               </tr>
            </thead>
            <tbody>
               <tr>
                  <td class="col-0"><h5>$Today</h5>
                  <p class="homicides-as-of"><em>As of 23:59 Previous Day<sup>*</sup></em></p></td>
                  <td class="current-year">
                     <div class="homicides-count">$HomicideCount_2013</div>
                     <% if Change %>
                     <% loop Change %>
                     <div class="homicides-change">
                     <img src="/themes/v3/img/$Trend" alt="" />
                     <% end_loop %>
                     <% end_if %>
                     <br>$Percentage%
                     </div></td>
                  <td>$HomicideCount_2012</td>
                  <td>$HomicideCount_2011</td>
                  <td>$HomicideCount_2010</td>
                  <td>$HomicideCount_2009</td>
                  <td>$HomicideCount_2008</td>
                  <td>$HomicideCount_2007</td>
               </tr>
            </tbody>
         </table>
			<% end_loop %>
         <% end_if %>
			
			
			<hr>
			
			
			<div class="heading"><h3>Past Crime Stats and Homicide Reports</h3></div>
			
			<p>All of the following Part I crime statistics are preliminary, and have not been finalized according to UCR guidelines. Year to date totals for homicide, including the previous year to which the current year is compared, are based on the number of homicide victims reported for that time period, and are subject to reclassification.</p>
			
			<h5>Homicide Reports</h5>
			<ul class="pdf-list">
			   <li><a href="/assets/crime-maps-stats/2013-JAN-JUN-Homicide-Analysis.pdf" target="_blank">2013 January - June Homicide Analysis</a></li>
			   <li><a href="/assets/crime-maps-stats/PPD-Homicide-Analysis-2011-vs-2012.pdf" target="_blank">2011 vs 2012 Homicide Report and Analysis</a></li>
            <li><a href="/assets/crime-maps-stats/PPD.Homicide.Analysis.2007-2010.pdf" target="_blank">2007 - 2010 Homicide Report and Analysis</a></li>
			</ul>

			<h5 class="">Latest Crime Stats Report</h5>
			
			<ul class="">
			   <li><a class="stats-link" href="#" data-link="//stats.phillypolice.com/crime-stats-reports">Weekly Reports</a></li>
			</ul>
			
			<h5 class="">Recent Crime Stats Reports</h5>
			
			<ul id="past-crime-stats-list" data-toggle="modal" class="">
			   <li><a class="stats-link" href="#" data-link="//stats.phillypolice.com/2013-crime-stats" target="_blank">2013 Crime Stats Reports</a></li>
			   <li><a class="stats-link" href="#" data-link="//stats.phillypolice.com/2012-crime-stats" target="_blank">2012 Crime Stats Reports</a></li>
			   <li><a class="stats-link" href="#" data-link="//stats.phillypolice.com/2011-crime-stats" target="_blank">2011 Crime Stats Reports</a></li>
			   <li><a class="stats-link" href="#" data-link="//stats.phillypolice.com/2010-crime-stats" target="_blank">2010 Crime Stats Reports</a></li>
			</ul>
			
			<p><a href="" class="btn">Show older stats reports</a></p>
			
		</div>
		
		
		<div class="span5">
			<div class="heading"><h3>Crime Mapper</h3></div>
			
			<p>Crime Mapper is based on the <a href="https://github.com/davewalk/phl-crime-mapper">PHL Crime Mapper</a> web app by Dave Walk. Map tiles by Stamen Design, under CC BY 3.0.  Data by OpenStreetMap, under CC BY SA. Crime data from the Philadelphia Police Department.</p>
			
			<h4>CrimeReports.com</h4>
			<p>For additional crime detail and more specific data that goes further back in time, visit <a href="https://www.crimereports.com/agency/philadelphia">CrimeReports.com</a>.</p>
			
			<h5>More on CrimeReports.com</h5>
			<p>CrimeReports.com <a href="/crime-maps-stats/crimereports-disclaimer-and-faqs">Disclaimer and Frequently Asked Questions</a></p>
			
			<hr>
			
			<div class="heading"><h3>Archive and Raw Crime Data</h3></div>
			
			<p>This layer holds Part I crime for the City of Philadelphia beginning January 1, 2006. Part I crime includes homicides, rapes, robberies, aggravated assaults, and thefts. The data displayed is generalized by the crime type and the block location. The data is updated daily. Metadata is included in the ZIP file.</p>
			
			<p><a href="http://www.opendataphilly.org/opendata/resource/215/philadelphia-police-part-one-crime-incidents/" target="_blank">Raw Crime Data - 2006 to Present</a></p>
			
		</div>
		
	</div>	
	
</div>		