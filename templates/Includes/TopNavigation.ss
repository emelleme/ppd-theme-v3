<% if $Parent.URLSegment %>
<ul id="nav-$Parent.URLSegment">
<% else %>
<ul id="nav-$URLSegment">
<% end_if %>
	<li><a class="nav-news" href="/news">News</a></li>
	<li><a class="nav-districts" href="/districts">Districts</a></li>
	<li><a class="nav-programs-services" href="/programs-services">Programs &amp; Services</a></li>
	<li><a class="nav-forms-reports" href="/forms-reports">Forms &amp; Reports</a></li>
	<li><a class="nav-crime-maps-stats" href="/crime-maps-stats">Crime Maps &amp; Stats</a></li>
	<li><a class="nav-careers" href="/careers">Careers</a></li>
	<li><a href=""><i class="icon-search"></i></a></li>
</ul>