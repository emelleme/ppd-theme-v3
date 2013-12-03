<div id="hero-twitter" class="span8">
	<div class="row">
		<div class="span2">
			<p class="twitter-left"><i class="icon-twitter"></i> @PHILLYPOLICE</p>
		</div>
		<div class="span6">
		<% with LatestTweet.Last %>
			<p class="twitter-right">$Status.RAW<a href="$TwitterURL"> <em>$pubDate.Ago</em></a></p>
		<% end_with %>
		</div>
	</div>
</div>