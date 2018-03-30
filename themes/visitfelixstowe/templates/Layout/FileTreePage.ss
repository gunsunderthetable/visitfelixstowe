<div class="twelve columns">
    <div class="row">
     $Breadcrumbs 
    </div>
    <div class="row">
    
   <div id="standardPage" <% if $FullWidthPage %>class="fullWidthLayout"<% end_if %>>
        
            <div class="pageContent">
                          
                <h1>$Title</h1>
                $Content
                <div id='fileTreePanel'>
                    <ul id="browser" class="filetree treeview">
                        $FilesForTree
                    </ul>
                </div>               
            </div>
             
            <div class="rightPanel">
                <% include SubNav %>
                $MyWidgetArea
                <% include ImageLinks %>
            </div>
        </div>
            
    </div>
        
</div>
