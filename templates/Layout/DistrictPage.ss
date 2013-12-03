<div class="container">
				
	<div class="row">
	
		<div class="span3 sidebar">
		
			<div class="heading"><h3>District Headquarters</h3></div>
			<% with DistrictInfo %>
			<p><strong>$DistrictHQAddress <br />
			Philadelphia, PA $DistrictHQZip</strong><br>
			<i class="icon-map-marker"></i> <a href="http://maps.google.com/maps?q=$DistrictHQAddress Philadelphia PA" target="_blank">Google Maps</a><br>
			<i class="icon-phone"></i> $DistrictPhoneNumber<br>
			<a href="mailto:$DistrictEmail"><i class="icon-envelope"></i> $DistrictEmail</a></p>
			
			<p class="district-map-image"><a href="http://maps.google.com/maps?q=$DistrictHQAddress Philadelphia PA" target="_blank">$DistrictMapImage</a></p>
			
			
			<hr>
			
			
			<div class="heading"><h3>District Leadership</h3></div>
			
			   <div style="width: 35%; float: left; margin-bottom: 9px;">
   			   <% if DistrictCaptainPhoto %>
               $DistrictCaptainPhoto
               <% end_if %>
            </div>
					
				<div style="float: left; margin-left: 12px;">
					<p><a href="#captain-info" class="district-captain" data-toggle="modal"><strong>$DistrictCaptain</strong></a><br>
					<em>Captain</em></p>
					<p><a href="mailto:$DistrictEmail"><i class="icon-envelope"></i> Email $DistrictName</a></p>
				</div>
				<% end_with %>
				<div class="clear"></div>
				
				<hr class="hr15">
				
				<h4>Police Service Areas</h4>
				<% loop PSAInfo %>
					<p class="district-psa">$PSAName - <strong>LT $PSALieutenantA</strong><br>
					<a href="mailto:$PSAEmail"><i class="icon-envelope"></i> Email $PSAName</a></p>
				<% end_loop %>
			
		</div>
	
		<div class="span6">
			
			$Content
			
			<div class="heading"><h3>$DistrictInfo.DistrictName News</h3></div>
			<% loop LatestNews.Limit(3) %>
			<!-- start: Post -->
			<div class="post">
				
				<% if Thumbnail %>
				<div style="width: 35%; float: left; margin: 0 15px 9px 0;"><a href="$Link"><img src="$Thumbnail" style="width: 100%;" /></a></div>
				<% end_if %>
				
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

			<% loop AllDistrictsNews.Limit(3) %>
			<!-- start: Post -->
			<div class="post">
				
				<% if Thumbnail %>
				<div style="width: 35%; float: left; margin: 0 15px 9px 0;"><a href="$Link"><img src="$Thumbnail" style="width: 100%;" /></a></div>
				<% end_if %>
				
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
			
			<p><a href="http://blog.phillypolice.com/tag/$URLSegment-district" class="btn">View More $DistrictInfo.DistrictName News</a></p>

		</div>
		
		<div class="span3">
			
			<div class="heading"><h3>Calendar</h3></div>
			<% if CalendarInfo %>
			<% loop CalendarInfo %>
			<p><a href="#cal$Pos" data-toggle="modal">$EventTitle</a><br>
			$StartTime</p>
			<% end_loop %>
			<% else %>
			<p>Currently no scheduled events.</p>
			<% end_if %>
			<hr>
			<% if DistrictInfo.Twitter || DistrictInfo.Facebook || DistrictInfo.Flickr %>
			<div class="heading"><h3>Follow the $URLSegment District</h3></div>
			<% end_if %>
			<ul class="social-small-grid">
				<% if DistrictInfo.Twitter %>
				<li>
					<div class="social-small-item">				
						<div class="social-small-info-wrap">
							<div class="social-small-info">
								<div class="social-small-info-front social-small-twitter">
									<a href="{$Link}twitter"></a>
								</div>
								<div class="social-small-info-back social-small-twitter-hover">
									<a href="{$Link}twitter"></a>
								</div>
							</div>
						</div>
					</div>
				</li>
				<% end_if %>
				<% if DistrictInfo.Facebook %>
				<li>
					<div class="social-small-item">				
						<div class="social-small-info-wrap">
							<div class="social-small-info">
								<div class="social-small-info-front social-small-facebook"><a href="//facebook.com/$DistrictInfo.Facebook">Facebook</a></div>
								<div class="social-small-info-back social-small-facebook-hover"></div>	
							</div>
						</div>
					</div>
				</li>
				<% end_if %>
				<% if DistrictInfo.Flickr %>
				<li>
					<div class="social-small-item">				
						<div class="social-small-info-wrap">
							<div class="social-small-info">
								<div class="social-small-info-front social-small-flickr"><a href="//flickr.com/$DistrictInfo.Flickr">Flickr</a></div>
								<div class="social-small-info-back social-small-flickr-hover"></div>	
							</div>
						</div>
					</div>
				</li>
				<% end_if %>
				</ul>
			
		</div>
		
	</div>	
	
</div>		
