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
    </head>
  	<body>
  	
  	<% include HeaderNotice %>
  	
<div id="wrapper">
  
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
			
			<!--start: Container -->
			<div class="container">
				
				<!-- start: Login Box-->
				<div class="row-fluid">
				
					<div class="lr-page span4 offset4">
		
						<div id="login-box">
		
							<!-- start: Row -->
							<div class="row-fluid">
		
								<div id="login-form" class="span12">
									
									<form id="MemberLoginForm_LoginForm" action="Security/LoginForm" method="post" enctype="application/x-www-form-urlencoded">
									
										$Content
									
										<p id="MemberLoginForm_LoginForm_error" class="message " style="display: none"></p>
									
										<input type="hidden" name="AuthenticationMethod" value="MemberAuthenticator" class="hidden" id="MemberLoginForm_LoginForm_AuthenticationMethod" />
		
										<div class="row-fluid">
		
											<input type="text" name="Email" class="text span12" id="MemberLoginForm_LoginForm_Email" placeholder="Username" />
		
											<input type="password" name="Password" class="text password span12" id="MemberLoginForm_LoginForm_Password" placeholder="Password"/>
		
										</div>
		
										<div class="row-fluid">
		
											<div class="remember">
												<input type="checkbox" name="Remember" value="1" class="checkbox" id="MemberLoginForm_LoginForm_Remember" /> Remember me!
											</div>
		
											<div class="forgot">
												<a href="#">Forgot password?</a>
											</div>
		
										</div>	
										
										<input type="hidden" name="BackURL" value="/" class="hidden" id="MemberLoginForm_LoginForm_BackURL" />
		
										<div class="Actions">
		
											<input type="submit" name="action_dologin" value="Log in" class="action btn btn-info btn-large span12" id="MemberLoginForm_LoginForm_action_dologin" />
		
										</div>
		
									</form>
		
								</div>
		
							</div>
							<!-- end: Row -->	
		
						</div>
						<!-- end: Login Box  -->
						
					</div>	
					
		      	</div>
				
			</div>
			<!--end: Container-->


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
    
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="themes/v3/js/custom.js"></script>
    <script src="themes/v3/js/bootstrap.min.js"></script>
  </body>
</html>