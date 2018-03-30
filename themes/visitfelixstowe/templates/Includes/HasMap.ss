<% if $hasMap && $MapInSideBar %>
<div class="map clearFix">
    <% if $MapTitle %><h1 class="red">$MapTitle</h1><% end_if %>
    <div id="map_canvas" style="width:100%; height:431px;"></div>
</div>
<% end_if %>