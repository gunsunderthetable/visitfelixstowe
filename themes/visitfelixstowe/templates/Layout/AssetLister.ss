<div class="twelve columns">
    <div class="row">
     $Breadcrumbs 
    </div>
    <div class="row">
    
   <div id="standardPage" <% if $FullWidthPage %>class="fullWidthLayout"<% end_if %>>
        
            <div class="pageContent">
                <h1>$Title</h1>
                $Content
                <div class="assetLister">
                        <ul>
                                <% loop Files %>
                                <% if IsSupportedFile %>
                                <li class="$CSSClass">
                                        <a href="$URL" alt=$Title title=$Title target="_blank">$Title</a>
                                        <br>
                                        <span class="size">uploaded on $Created.Nice</span>
                                </li>
                                <% end_if %>
                                <% end_loop %>
                        </ul>
                </div>                
                $Form
                $PageComments
            </div>
            <div class="rightPanel">
                <% include SubNav %>
                $MyWidgetArea
                <% include ImageLinks %>
            </div>
        </div>
            
    </div>
        
</div>