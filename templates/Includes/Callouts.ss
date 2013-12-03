<% loop Callouts %>
<div class="span4 callout">
	<a href="$LinksTo.URLSegment">$Image
	<p class="title">$Title</p></a>
	<p class="excerpt">$Snippet.RAW</p>
</div>
<% end_loop %>