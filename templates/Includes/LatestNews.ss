<div class="heading"><h3>Latest News</h3></div>
<div class="row">
<% loop LatestHomeNews.Limit(2) %>
	<div class="span3">
		<!-- Control image height. Max image width is limited by span3. Allow actual image width to be set by original size of image. -->
		<p class="title"><a href="$Link">
		<% if Thumbnail %><img src="$Thumbnail" alt="Latest News Item"><br>
		<% else %>
		<% end_if %>
		$Title</a>
		<p class="date">$Date.Ago</p>
		<p class="excerpt">$Excerpt.LimitSentences(1)</p>
	</div>
<% end_loop %>
</div>