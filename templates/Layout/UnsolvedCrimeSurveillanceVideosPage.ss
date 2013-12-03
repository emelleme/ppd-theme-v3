<div class="container">
				
	<div class="row">
	
		<div class="span12">
			$Content
		</div>
		
	</div>	
	<!-- /row -->
	
	
	<!-- filters -->
	
	
	<% loop VideoSections %> 
	 <% if Categories %>
	<div id="filters-$Slug">
		<ul class="filter option-set" data-filter-group="categories">
			<li><strong><i class="icon-filter"></i> $Title</strong>&nbsp;&nbsp;&nbsp;</li>

			<li><a href="#filter-categories" class="selected" data-filter-value="">All</a></li>
            
            <% loop Categories %>
			<li><a href="#filter-categories" data-filter-value=".$CategoryClass">$Title</a></li>
            <% end_loop %>
            
        </ul>
        </div>
    <% end_if %>
    <% end_loop %>
    <% loop VideoSections %> 
    <% if Tags %>
    <div id="filters-$Slug">
        <ul class="filter option-set" data-filter-group="tags">
        	<li><strong><i class="icon-filter"></i> $Title</strong>&nbsp;&nbsp;&nbsp;</li>

			<li><a href="#filter-tags" class="selected" data-filter-value="">All</a></li>
            
            <% loop Tags %>
			<li><a href="#filter-tags" data-filter-value=".$slug">$name</a></li>
            <% end_loop %>
            
		</ul>
	</div>
	<% end_if %>
	<% end_loop %>
	
	

	<!-- /filters -->
	
	
	<hr class="clear">
	
	
	<!-- video cards -->
	<div id="video-cards-wrapper" class="row isotope">

        <% loop $videoFeed($VideoSections.First.Slug) %>
		<div class="span3 video-item $VideoCategories.First.CategoryClass $VideoTags.First.slug">
			<div class="video-card-thumbnail"><a href="#vidFrame" data-toggle="modal" data-description="$Description.LimitCharacters(280)" data-videoid="$VideoId" class="video-link" data-title="$Title">
                <img src="$LargeThumbnail" alt="title" width="270" height="147"/></a>
                
				<div class="video-card-title"><a href="#vidFrame" data-toggle="modal" data-description="$Description.LimitCharacters(280)" data-videoid="$VideoId" class="video-link" data-title="$Title">$Title</a></div>
				<div class="video-card-meta"><i class="icon-calendar"></i> $DateAdded.Format('M j, Y') &nbsp;&nbsp;&nbsp; <i class="icon-eye-open"></i> $ViewCount views</div>
			</div>
		</div>
        <% end_loop %>
       

	</div>
	<!-- /video cards -->
	
</div>		