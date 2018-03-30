<div class="twelve columns">
    <div id="standardPage" class="fullWidthLayout">
        <div class="pageContent">
            <h1>$Title</h1>
            <p>Your search for <string>$Query</strong> found $Count businesses</p>
            <div id="searchWrapper" class="inPage">
             $ChildrenSearchForm
            </div>      
            <div id="searchResults">
            <% if Count %>
                <ul>
                <% loop Results %>
                    <li><h3><a href="$Link" >$Title</a></h3><p>$Content.ContextSummary</p></li>
                <% end_loop %>
                </ul>
            <% else %>
                <p>Sorry - your search for $Query didn't match any businesses.</p>
            <% end_if %>
            </div>
        </div>

    </div>
        
</div>
<% require css(themes/visitfelixstowe/css/listnav.css) %>




