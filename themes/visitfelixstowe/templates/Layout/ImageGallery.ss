
<div class="twelve columns">
    <div class="row">
     $Breadcrumbs 
    </div>
    <div class="row">
        <div id="standardPage" <% if $FullWidthPage %>class="fullWidthLayout"<% end_if %>>
            <% loop $Images.Sort(SortOrder,ASC) %>
            <div class="galleryBox position-$pos">        
                <div class="content">
                    <a><img class="example-image" src="$GalleryImage.CroppedImage(500,500).URL" alt=""/></a>
                    <% include ImageSocial %>
                </div>
            </div>
            <% end_loop %>        
	    </div>
        <div class="sideBar">
            <% include SubNav %>
            <% include ImageLinks %>
            <% include ContentPageImages %>
            $MyWidgetArea
        </div>        
    </div>
</div>

<% require css("gallery/css/gallery.css") %>
<% require css("gallery/css/lightbox.css") %>
<% require javascript("gallery/javascript/lightbox.min.js") %>              
