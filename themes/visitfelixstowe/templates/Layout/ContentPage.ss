<div class="twelve columns">
     $Breadcrumbs 
    <div id="standardPage" <% if $FullWidthPage %>class="fullWidthLayout"<% end_if %>>
        <div class="pageContent">
            <h1>$Title</h1>
            $Content
            <% if $hasMap %>
            <% if not $MapInSideBar %>
            <div class="map">
                <div id="map_canvas" style="width:100%; height:431px;"></div>
            </div>
            <% end_if %>
            <% end_if %>
            <% if $Children %>
            <div id="mobileLinks" class="mobile bottomed">
                <div class="clearFix">
                    <h2>In this section</h2>
                    <p>
                        <% loop $Children %>
                        <a class="quickLinkPara $FirstLast" href="$Link" title="$Title">$Title</a>
                        <% end_loop %>
                    </p>
                </div>
            </div>            
            <% end_if %>
            $Form
            $PageComments
        </div>
        <div class="logoSearch desktop <% if $FullWidthPage %> fullWidthLayout<% end_if %>">
            <% include Search %>
        </div>

        <div class="sideBar">
            <% include SubNav %>
            <% include ImageLinks %>
            $MyWidgetArea
            <% include HasMap %>
        </div>
    </div>
        
</div>
