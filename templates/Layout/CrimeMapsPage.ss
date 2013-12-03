<!DOCTYPE html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>PHL Crime Mapper</title>
        <meta name="description" content="PHL Crime Mapper gives you access to Philadelphia Part I crime data for the past three years on your smartphone, tablet or computer.">
        <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
        <link rel="stylesheet" href="http://cdn.leafletjs.com/leaflet-0.4/leaflet.css" />
        <!--[if lte IE 8]>
         <link rel="stylesheet" href="http://cdn.leafletjs.com/leaflet-0.4/leaflet.ie.css" />
         <link rel="stylesheet" href="themes/v3/css/font-awesome-ie7.min.css" />
        <![endif]-->
        
        <link href="/themes/v3/css/bootstrap.min.css" rel="stylesheet" media="screen,print">
        <link href="/themes/v3/css/bootstrap-responsive.css" rel="stylesheet" media="screen">
        <link href="/themes/v3/css/crime-map.css" rel="stylesheet" media="screen,print">
        <link rel="stylesheet" href="/crimemaps/app/styles/leaflet.draw.css">
        <link href="http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700" rel="stylesheet" type="text/css">    
        <link rel="stylesheet" href="/crimemaps/app/styles/classic.css">
        <link rel="stylesheet" href="/crimemaps/app/styles/font-awesome.css">
        <link rel="stylesheet" href="/crimemaps/app/styles/main.css">
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
    </head>
    <body>
        <div id="smartphone-start-container">
            <div id="smartphone-start" align="center">
                <h1>PHL Crime Mapper</h1>
                <div class="loading"><i class="icon-spinner icon-spin icon-2x"></i></div>
                <h3>This application shows you the Part I (serious) crimes around you in the last month.</h3>            
                <h3>To begin, select a radius around your current location that you want to display crimes for.</h3>
                <center>
                    <form id="distance-form">
                        <select name="distance-dropdown" class="mobile-dropdown mobile-form" onchange="PhlCrimeMapper.showCrimesMobile($('.mobile-dropdown option:selected').val()); return false;">
                            <option value="1775">Select a Radius</option>
                            <option value="1775">3 Block Radius</option>  
                            <option value="2825">5 Block Radius</option>
                            <option value="5450">10 Block Radius</option>
                        </select>
                    </form><br />
                </center>
            </div>          
        </div>
        <div id="explanation" class="draggable map-explanation">
            <h1>Crime Mapper</h1>
                <h4><!-- This application allows you to draw an area and view the Part I (serious) crimes in that region over the last three years. -->
                View serious crimes in your neighborhood. </h4>
                
                <p>1) Select a date range<br>
                2) Draw a box around your neighborhood to view recent crimes</p>
                
                <label for="date-range"><i class="icon-calendar"></i> Date Range</label>
                <div class="btn-group" id="date-range">
                    <button class="btn active" data-days="7">Last 7 Days</button>
                    <button class="btn" data-days="30">Last Month</button>
                    <button class="btn" data-days="180">Last 6 Months</button>
                </div>
                
                <label for="street-address"><i class="icon-map-marker"></i> Location</label>
                <h5><a onclick="PhlCrimeMapper.drawControl.handlers.polygon.enable();" class="btn btn-info">Draw a box</a> around your neighborhood.</h5>
                
                <!-- <label for="street-address"><i class="icon-map-marker icon-white"></i> Location</label>
                <input type="text" id="street-address" placeholder="Street Address" /> -->
               <!--  <div id="current-location-display" style="display: none;">Where I am right now. <a href="#" id="cancel-current-location">Cancel</a></div>
                <div id="location-option">or, <a href="#" id="use-location">detect my location</a> <i class="icon-loading" style="display: none;"></i></div> -->

                <!-- <label for="radius"><i class="icon-cog icon-white"></i> Radius</label>
                <div class="btn-group" id="radius">
                    <button class="btn" data-blocks="5">5 Blocks</button>
                    <button class="btn active" data-blocks="10">10 Blocks</button>
                    <button class="btn" data-blocks="15">15 Blocks</button>
                </div> -->

                

               <!--  <div class="map-actions">
                    <button class="btn" id="show-crimes">Show Crimes</button>
                    <button class="btn" id="reset-crime-map">Reset</button>
                </div> -->
        </div>
        <div id="results" class="draggable">
            <form id="results-form"></form>        
        </div>
        <div class="loading"><i class="icon-spinner icon-spin icon-2x"></i></div>
        <div id="map"></div>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->
        
        <script type="text/javascript" src="/themes/v3/js/crime-map.js"></script>
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="apple-touch-icon-144x144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="apple-touch-icon-114x114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="apple-touch-icon-72x72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="apple-touch-icon-57x57-precomposed.png">
</body>
</html>
