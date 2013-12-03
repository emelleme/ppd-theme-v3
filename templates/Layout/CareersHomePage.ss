<div class="container" id="$URLSegment">

	<!--div class="row">
	
		<div class="span12">
		
			<img src="themes/v3/temp/careers.jpg">
			
		</div>
		
	</div>
	
	<hr-->
				
	<div class="row">
	
		<div class="span3 sidebar">
		
			<div class="heading"><h3>Careers</h3></div>
			
			<% include SubNavigation %>
			
			
			<hr>
			
			
			<div class="heading"><h3>Academy Photostream</h3></div>
			
			<div class="flickr-widget">
				<script type="text/javascript" src="http://www.flickr.com/badge_code_v2.gne?count=9&display=latest&size=s&layout=x&source=user&user=10283108@N05"></script>
				<div class="clear"></div>
			</div>
			
			
		</div>
	
		<div class="span6">
			
			<div class="heading"><h3>Join Philadelphia's Finest</h3></div>
			
			$Content
			
			
			<hr>
			
			
			<div class="heading"><h3>Recruitment Blog</h3></div>
			
			<% loop LatestNews.Limit(4) %>
			<!-- start: Post -->
			<div class="post">
				
				<div style="width: 35%; height: 126px; float: left; margin: 0 15px 9px 0;"><a href="$Link"><img height="126" src="$Thumbnail" /></a></div>
				
				<div class="post-content">
					<div class="post-title"><h3><a href="$Link">$Title</a></h3></div>
					<div class="post-description">
						<p>
							$Excerpt.LimitWordCountXML(33)
						</p>
					</div>
					<div class="post-meta" style="margin-top: 15px;"><span><i class="icon-calendar"></i>$Date.Ago</span> <span><i class="icon-user"></i>By <a href="http://blog.phillypolice.com/author/$AuthorSlug">$Author</a></span> <span><i class="icon-comment"></i><a href="{$Link}#disqus_thread">$CommentCount comments</a></span></div>
				</div>
			</div>
			<!-- end: Post -->
			<% end_loop %>

		</div>
		
		<div class="span3">
			
			<div class="heading"><h3>At a Glance</h3></div>
			
			<p class="red"><strong>Recruitment Class:</strong> Delta</p>

			<p class="red"><strong>Number of Openings:</strong> 30</p>

			<p class="red"><strong>Starting Salary:</strong> $43,748</p>

			<p class="red"><strong>Hours of Police Academy:</strong> 672</p>
			
			
			<hr>
			
			
			<div class="heading"><h3>Calendar</h3></div>
			<% if CalendarInfo %>
			<% loop CalendarInfo %>
			<p><a href="#cal$Pos" data-toggle="modal">$EventTitle</a><br>
			$StartTime</p>
			<% end_loop %>
			<% else %>
			<p>Currently no scheduled events.</p>
			<% end_if %>
			
		</div>
		
	</div>	
	
</div>		