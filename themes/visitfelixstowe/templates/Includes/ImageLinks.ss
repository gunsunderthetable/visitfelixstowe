<% if ImageLinks %>
<% loop ImageLinks %>
<div class="imageLink $EvenOdd">
    <a href="$LinkPage.Link" alt="$Title" title="$Title" >
    	<% if $Aspect=='Portrait' %>
    	<img class="portrait" src="<% loop LinkImage %><% loop CroppedImage(280,350) %>$URL<% end_loop %><% end_loop %>" />
    	<% else %>
    	<img class="landscape" src="<% loop LinkImage %><% loop CroppedImage(470,350) %>$URL<% end_loop %><% end_loop %>" />
    	<% end_if %>
    </a>
    <div class="imageLinkText">
        <a href="$LinkPage.Link" alt="$Title" title="$Title" >            
        <h2>$Title</h2>
        <h1>$Content</h1>
        </a>
    </div>
</div>
<% end_loop %>
<% end_if %>  