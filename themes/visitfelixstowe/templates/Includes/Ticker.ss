
<% if $Ticks %>
<h1 class="red tickerTitle">$TickerTitle</h1>
<div class="ticker">
	<ul>
		<% loop $Ticks %>
		<li>
			<% if $TickImageID %>
			<a href="$TickerLink.Link"><img src="$TickImage.CroppedImage(130,140).URL" alt="$Title" title="$Title" /></a>
			<% else %>
			<a href="$TickerLink.Link"><img src="$ThemeDir/images/visitfelixstowe_blank.png" alt="$Title" title="$Title" /></a>
            <% end_if %>
            <h3><a href="$TickerLink.Link">$Title</a></h3>
            <p>$Description</p>
		</li>
		<% end_loop %>
	</ul>
</div>
<img class="narDiv" src="$ThemeDir/images/divider_wide_orange.png" />
<% end_if %>

<% require css("mysite/css/ticker.css") %>
<% require javascript("mysite/javascript/jquery.easy-ticker.min.js") %>
<% require javascript("mysite/javascript/ticker_init.js") %>

