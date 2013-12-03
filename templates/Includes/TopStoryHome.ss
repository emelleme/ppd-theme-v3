<% with TopStory %>
<div id="hero-headline" class="span8">
	<a href="$Link"><img src="$Thumbnail" alt="Top Story Photo"></a>
	<p class="title"><a href="$Link">$Title</a></p>
	<p class="excerpt">$Excerpt.LimitSentences(2) <a href="$Link">More...</a></p>
</div>
<% end_with %>