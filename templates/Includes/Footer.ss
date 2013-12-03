<div class="container">
	    	
	<div class="row">
		
		<!-- contact -->
		<div class="span3">
			<div class="title"><i class="icon-envelope-alt"></i>&nbsp;&nbsp;CONTACT</div>
			<p><strong>Police Headquarters</strong><br>
			750 Race Street<br>
			Philadelphia, PA 19106<br>
		   
			<p><a href="mailto:hello@phillypolice.com">hello@phillypolice.com</a></p>
			
			<p><strong>TIPS</strong><br>
			Call 215.686.TIPS (8477) or<br>
			text PPDTIP (773847)</p>
			
			<p style="float: left; width: 100px;"><strong>EMERGENCY</strong><br>
			911</p>
			   
			<p><strong>NON-EMERGENCY</strong><br>
			311
			</p>
			
			<ul class="social-simple">
				<li class="twitter"><a href="/redirect/twitter" target="_blank">twitter</a></li>
				<li class="facebook"><a href="/redirect/facebook" target="_blank">facebook</a></li>
				<li class="instagram"><a href="/redirect/instagram" target="_blank">instagram</a></li>
				<li class="youtube"><a href="/redirect/youtube" target="_blank">youtube</a></li>
			</ul>
		</div>
		<!-- /contact -->
		
		<!-- about -->
		<div class="span3">
			<div class="title"><i class="icon-group"></i>&nbsp;&nbsp;ABOUT US</div>
			<p>The Philadelphia Police Department (PPD) is the nation's fourth largest police department, with over 6600 sworn members and 800 civilian personnel. The PPD is the primary law enforcement agency responsible for serving Philadelphia County, extending over 140 square-miles in which approximately 1.5 million reside.</p>
			<ul>
				<li><i class="icon-star"></i> <a href="/about">About the Department</a></li>
				<li><i class="icon-star"></i> <a href="/about/mission">Mission</a></li>
				<li><i class="icon-star"></i> <a href="/about/leadership">Leadership</a></li>
				<li><i class="icon-star"></i> <a href="/about/fallen-officers">Fallen Officers</a></li>
				<li><i class="icon-star"></i> <a href="/about/partners">Partners</a></li>
				<li><i class="icon-star"></i> <a href="/about/press-inquiries">Press Inquiries</a></li>
				<li><i class="icon-star"></i> <a href="/about/contact">Contact</a></li>
			</ul>
		</div>
		<!-- /about -->
		
		<!-- latest news --> 
		<div class="span3 latest-news">
		<% loop LatestNews.Limit(1) %>
			<div class="title"><i class="icon-list-alt"></i>&nbsp;&nbsp;LATEST NEWS</div>
			<% if Thumbnail %><a href="$Link"><img src="$Thumbnail" alt="Latest News Item">
			<p class="title">$Title</p></a>
			<% else %>
			<% end_if %>
			<p class="date">$Date.Ago</p>
			<p class="excerpt">$Excerpt.LimitWordCountXML(33)</p>
		<% end_loop %>
		</div>
		<!-- latest news -->
		
		<!-- latest tweets -->
		<div class="span3 latest-tweets">
			<div class="title"><i class="icon-comments"></i>&nbsp;&nbsp;LATEST TWEETS</div>
			<% loop Tweets.Reverse.Limit(3) %>
			<p>$Status.RAW <br />
			<a href="$TwitterURL"><em>$pubDate.Ago</em></a></p>
			<% end_loop %>
		</div>
		<!-- /latest tweets -->
		
	</div>
	    	
</div>

<script>
// Include the UserVoice JavaScript SDK (only needed once on a page)
UserVoice=window.UserVoice||[];(function(){var uv=document.createElement('script');uv.type='text/javascript';uv.async=true;uv.src='//widget.uservoice.com/wtSURDTpN4xIns81Lpdxg.js';var s=document.getElementsByTagName('script')[0];s.parentNode.insertBefore(uv,s)})();

//
// UserVoice Javascript SDK developer documentation:
// https://www.uservoice.com/o/javascript-sdk
//

// Set colors
UserVoice.push(['set', {
  smartvote_title: 'Submit Feedback & Ideas',
  contact_title: 'Report a Bug',
  accent_color: '#6aba2e',
  trigger_color: 'white',
  trigger_background_color: '#6aba2e'
}]);

// Identify the user and pass traits
// To enable, replace sample data with actual user traits and uncomment the line
UserVoice.push(['identify', {
  //email:      'john.doe@example.com', // User’s email address
  //name:       'John Doe', // User’s real name
  //created_at: 1364406966, // Unix timestamp for the date the user signed up
  //id:         123, // Optional: Unique id of the user (if set, this should not change)
  //type:       'Owner', // Optional: segment your users by type
  //account: {
  //  id:           123, // Optional: associate multiple users with a single account
  //  name:         'Acme, Co.', // Account name
  //  created_at:   1364406966, // Unix timestamp for the date the account was created
  //  monthly_rate: 9.99, // Decimal; monthly rate of the account
  //  ltv:          1495.00, // Decimal; lifetime value of the account
  //  plan:         'Enhanced' // Plan name for the account
  //}
}]);

// Add default trigger to the bottom-right corner of the window:
UserVoice.push(['addTrigger', { mode: 'contact', trigger_position: 'bottom-right' }]);

// Or, use your own custom trigger:
//UserVoice.push(['addTrigger', '#id', { mode: 'contact' }]);

// Autoprompt for Satisfaction and SmartVote (only displayed under certain conditions)
UserVoice.push(['autoprompt', {}]);
</script>