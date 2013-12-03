<ul class="square-list sub-nav" id="$URLSegment">
   <li><a href="/$Level(1).URLSegment" class="$Level(1).URLSegment">$Level(1).Title</a></li>
<% loop Menu(2) %>
	<li><a href="$Link" class="$URLSegment">$Title</a></li>
<% end_loop %>
</ul>