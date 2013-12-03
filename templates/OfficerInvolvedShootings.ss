<!DOCTYPE html>
<html>
  	<head>
	<% base_tag %>
	<!-- start: Meta. No Base tag needed -->
		<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> | $SiteConfig.Title</title>
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" >
	    <link rel="shortcut icon" type="image/x-icon" href="themes/v3/img/favicon.ico">
	    <link href="themes/v3/css/bootstrap.min.css" rel="stylesheet" media="screen,print">
	    <link href="themes/v3/css/bootstrap-responsive.css" rel="stylesheet" media="screen">
	    <link href="themes/v3/css/font-awesome.min.css" rel="stylesheet" media="screen">
	    <link href="themes/v3/css/custom.css" rel="stylesheet" media="screen,print">
	    <link href="themes/v3/css/social-icons.css" rel="stylesheet" media="screen">
	    <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300italic,700' rel='stylesheet' type='text/css'>
	    <link href="themes/v3/css/print.css" rel="stylesheet" media="print">
	    <script src="http://code.jquery.com/jquery.js"></script>
	    
	    <!--[if lt IE 9]>
		    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		    <link rel="stylesheet" href="themes/v3/css/ie78.css">
		    <link rel="stylesheet" href="themes/v3/css/font-awesome-ie7.min.css">
		    <script src="themes/v3/js/pngfix.js"></script>
		    <script>
		    $(document).ready(function(){ 
		    	$(document).pngFix(); 
    		});
    		</script> 
		<![endif]-->
		<script type="text/javascript">
        //<![CDATA[
        function showHide(elementid){
            if (document.getElementById(elementid).style.display == 'none'){
                document.getElementById(elementid).style.display = '';
            } else {
                document.getElementById(elementid).style.display = 'none';
            }
        }
        //]]>
      </script>
      
      <script src="themes/v3/js/fancybox.js"></script>
      <link href="themes/v3/css/fancybox.css" rel="stylesheet" media="screen">
      <script type="text/javascript">
      	$(document).ready(function () {
            /* fancybox handler */
            $('.fancybox').fancybox({
                autoScale: true,
                autoDimensions: true,
                iframe: {
                    preload: false // fixes issue with iframe and IE
                }
            });
        });
      </script>
    </head>
  	<body>
  	
  	<% include HeaderNotice %>
  	
<div id="wrapper">
	
	<% include SearchOverlay %>
	  	<div id="header-content">
	  	
			<div id="nav">
	  			<div class="container">
		  			<div class="row">
			  			<div class="span4">
				  			<% include Logo %>
				  		</div>
					  	<div class="span8">
					    	<% include TopNavigation %>
					    </div>
					</div>
	  			</div>
			</div>
			<!-- /nav -->
			
			<div class="container">
				<h1>$Title</h1>
			</div>
			<!-- /container -->
			
			<div class="home-header-shadow-top"></div>
			<div class="home-header-shadow-bottom"></div>
		
		</div>
		<!-- /header -->
		
		<div id="content">
			<div class="container">
				
				<div class="row">
				
					<div class="span9">
						$Layout
					</div>

					<div class="span3">
					   <div class="heading"><h3>$Parent.Title</h3></div>
						<% include SubNavigation %>
					</div>
					<!-- /sidebar -->
				</div>	
				
			</div>	
			<!-- /container -->
		</div>
		<!-- /content -->
    
		
		
		<!-- city links -->
		<div id="city-links">
			<% include CityLinks %>
		</div>
		<!-- /city links -->
		
    
    
		<!-- footer -->
	    <div id="footer">
	    	<% include Footer %>
	    </div>
	    <!-- /footer -->
    
	    <div id="copyright">
	    	<% include Copyright %>
	    </div>
	    <!-- /copyright -->
    
    </div>
    <!-- /wrapper -->
    
    <% include PageHeader %>
  </body>
</html>