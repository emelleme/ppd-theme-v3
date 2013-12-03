<div class="container">
				
	<div class="row">
	
		<div class="span3 sidebar">
		
			<div class="heading"><h3>News Categories</h3></div>
			
			<h5>News</h5>
			<ul>
			  <li><a href="http://blog.phillypolice.com/category/news">News</a></li>
			</ul>
			
		<% loop GeneralNewsSections %>	
			<h5>$Title</h5>
			
			<ul>
			<% if Categories %>
			<% loop Categories %>
				<li><a href="$html_url">$categoryName</a></li>
			<% end_loop %>
			<% end_if %>

			<% if Tags %>
			<% loop Tags %>
				<li><a href="$html_url">$name</a></li>
			<% end_loop %>
			<% end_if %>
			</ul>
		<% end_loop %>	
		
		 <!--p style="margin: 0;"><em>Featured Tags</em></p>
			<ul class="no-list" style="list-style: none;">
   			<% loop FeaturedTags %>
   			<li><a href="$html_url"><i class="icon-tag"></i>$name</a></li>
   			<% end_loop %>
			</ul-->
			
         <hr>
         
         <div class="heading"><h3>Most Wanted</h3></div>
			
			<!--p>There is up to a $20,000 reward for information leading to the arrest and conviction of all homicide suspects.</p-->
			<ul class="pdf-list">
			<li class="vid-list"><a href="$MostWantedVideo.First.URL">Philly's Most Wanted</a></li>
			<% with MegansLawDocs.First %>
			<li class="pdf-list" style="line-height: 18px !important;"><a href="$File.URL" target="_blank">Megan's Law Fugitives</a><br><span class="mw-date">Updated $Created.Ago</span></li>
			<% end_with %>
			</ul>
			
			<hr>
			
			<div class="heading"><h3>Hot Topics</h3></div>
			
			<p><a href="/news/police-officer-involved-shootings"><strong>Officer Involved Shootings</strong></a><br>Maps, statistics, and individual shooting summaries pertaining to our battle against gun violence.</p>
			
			<!--p><a href="/news/police-officer-involved-shootings" class="btn">Officer Involved Shootings Details</a></p-->
					
		</div>
	
		<div class="span6">
			
			<div class="heading"><h3>Latest News</h3></div>
			
			<div class="row">

			 <div class="span3">
			<% loop LatestNews %>
				<% if First %>
	               <div id="latest-news-story">
	      			<img src="$Thumbnail">
	      			
	      			<p class="latest-news-story-title"><a href="$Link">$Title</a></p>
	      			<p class="latest-news-story-category-date"><a href="">$Category</a>&nbsp;&nbsp;&nbsp;$Date.NiceUS</p>
	      			
	      			<!--p class="latest-news-story-excerpt">$Excerpt</p>
	      			
	      			<p><a href="$Link">Continue reading &raquo;</a></p-->
	      			
	               </div>
	               
				   
				   <!-- /latest news story -->
			   <% end_if %>
		   <% end_loop %>
		   
			<% loop LatestNews %>  
			   <% if First %>
			   <% else %>
			      <div class="news-list">
			         <!--div class="span1">
			            <img src="$Thumbnail"> 
			         </div-->
			            <!--p class="news-list-category"><a href="">$Category</a></p>
                     <p class="news-list-date">$Date.NiceUS</p-->
                     <p class="news-list-title"><a href="$Link">$Title</a></p>
			      </div>
		      <% end_if %>
			   
			   <!-- / news list -->
			
			<% end_loop %> 
			<a href="blog" class="btn"><i class="icon-list-ul"></i> View More News</a>
			
		   </div>

		   <div class="span3">
			<% loop LatestGoodNews %>  
			   <% if First %>
			   <% else %>
			      <div class="row news-list">
			         <div class="span1">
			            <img src="$Thumbnail"> 
			         </div>
			         <div class="span2">
			            <!--p class="news-list-category"><a href="">$Category</a></p>
                     <p class="news-list-date">$Date.NiceUS</p-->
                     <p class="news-list-title"><a href="$Link">$Title</a></p>
			         </div>
			      </div>
		      <% end_if %>
			      
			   <!-- / news list -->
			
			<% end_loop %> 
			
			</div> 
			</div>
			<!-- /row -->
			
			
			
			
		</div>
		
		<div class="span3">
			
			
			<div class="heading"><h3>Unsolved Crime Videos</h3></div>
			<div id="myCarousel" class="carousel slide">
			  <!-- Carousel items -->
			  <div class="carousel-inner">
			  <% loop TopVideos.Limit(1) %>
			  <% if First %>
			    <div class="active item">
			   
			    <p><a href="#videoModal" data-toggle="modal"><img src="$MainThumb"></a></p>
				<p><strong>$Title</strong><br>
				<em>$DateAdded</em></p>
				</div>
			  <% else %>
			  	<div class="item">
			  	<p><strong>$Title</strong><br>
				<em>$DateAdded</em></p>
			    <p><img src="$MainThumb"></p>
				
				</div>
			  <% end_if %>
			  <% end_loop %>
			  </div>
			  <!-- Carousel nav 
			  <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
			  <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
			  -->
			</div>

			<a href="/news/unsolved-crime-surveillance-videos" class="btn btn-info"><i class="icon-youtube-play"></i> View All Unsolved Crime Videos</a>			
			
			<hr>
			
			<div class="heading"><h3>@PhillyPolice</h3></div>
   		<div class="latest-tweets">
   			<% loop Tweets.Reverse.Limit(1) %>
   			<p>$Status.RAW <br />
   			<a href="$TwitterURL"><em>$pubDate.Ago</em></a></p>
   			<% end_loop %>
   			
   			<a href="http://www.twitter.com/phillypolice" class="btn"><i class="icon-twitter"></i> Follow Us</a>
   		</div>
		
		</div>
		
	</div>	
	
	
	<hr class="hr45">
	
	
	<div class="row">
	
		<div class="span6">
		<% with GeneralNewsSections.Last %>
			<div class="heading"><h3>$Title</h3></div>
	
			<!-- filters -->
			
			<div id="filters-$Slug">
				<ul class="option-set" data-option-key="filter">
					<li><strong><i class="icon-filter"></i> Filter</strong>&nbsp;&nbsp;&nbsp;</li>
					<li><a href="#filter" class="selected" data-option-value="*">All</a></li>
					<% if Categories %>
					<% loop Categories %>
					<li><a href="#filter" data-option-value=".{$Slug}">{$categoryName.UpperCase}</a></li>
					<% end_loop %>
					<% end_if %>

					<% if Tags %>
					<% loop Tags %>
					<li><a href="#filter" data-option-value=".{$Slug}">{$name.UpperCase}</a></li>
					<% end_loop %>
					<% end_if %>

				</ul>
			</div>
		<% end_with %>
			<!-- /filters -->
			<hr class="clear">
			
			<div class="separator no-bot-padding"></div>
			
			<!-- post cards -->
			<div id="post-cards-$GeneralNewsSections.Last.Slug-wrapper" class="row">

			<% loop $newsFeed($GeneralNewsSections.Last.Slug).Limit(30) %>
				<div class="span3 post-card $CategoryClass">
					<div class="post-card-thumbnail"><% if Thumbnail %><a href=""><img src="$Thumbnail" alt="title"/></a><% end_if %>
						<div class="post-card-title"><a href="$Link">$Title</a></div>
						<!--p class="post-card-excerpt">$Excerpt.LimitCharacters(100)</p-->
						<div class="post-card-meta"><p><i class="icon-tag"></i>$TagList</p>
						<i class="icon-calendar"></i> Posted $Date</div>
					</div>	
				</div>
			<% end_loop %>
			</div>
			<!-- /post cards -->
			
		</div>
		<!-- /Police Blotter -->
		
		
		
		<div class="span6">
		
		<% with GeneralNewsSections.First %>
			<div class="heading"><h3>$Title</h3></div>
	
			<!-- filters -->
			
			<div id="filters-$Slug">
				<ul class="option-set" data-option-key="filter">
					<li><strong><i class="icon-filter"></i> Filter</strong>&nbsp;&nbsp;&nbsp;</li>
					<li><a href="#filter" class="selected" data-option-value="*">All</a></li>
					<% if Categories %>
					<% loop Categories %>
					<li><a href="#filter" data-option-value=".{$Slug}">{$categoryName.UpperCase}</a></li>
					<% end_loop %>
					<% end_if %>

					<% if Tags %>
					<% loop Tags %>
					<li><a href="#filter" data-option-value=".{$Slug}">{$name.UpperCase}</a></li>
					<% end_loop %>
					<% end_if %>
					
				</ul>
			</div>
		<% end_with %>
		<!-- /filters -->
			
			
			<hr class="clear">
			
			<div class="separator no-bot-padding"></div>
			
			<!-- post cards -->
			<div id="post-cards-$GeneralNewsSections.First.Slug-wrapper" class="row">

			<% loop $newsFeed($GeneralNewsSections.First.Slug).Limit(30) %>
				<div class="span3 post-card $CategoryClass">
					<div class="post-card-thumbnail"><% if Thumbnail %><a href=""><img src="$Thumbnail" alt="title"/></a><% end_if %>
						<div class="post-card-title"><a href="">$Title</a></div>
						<!--p class="post-card-excerpt">$Excerpt.LimitCharacters(100)</p-->
						<div class="post-card-meta"><p><i class="icon-tag"></i>$TagList</p>
						<i class="icon-calendar"></i> Posted $Date</div>
					</div>	
				</div>
			<% end_loop %>
			</div>
			<!-- /post cards -->
			
		</div>
		<!-- /Behind the Badge -->
		
	</div>
	
</div>		
