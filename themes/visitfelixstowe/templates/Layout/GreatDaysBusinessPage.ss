<div class="twelve columns">
     $Breadcrumbs 
    <div id="standardPage" <% if $FullWidthPage %>class="fullWidthLayout"<% end_if %>>
        <div class="pageContent">
            <h1>$Title</h1>
            <% if $BusinessPageImages %>
                <div id="imageWrapper">
                    <% loop $BusinessPageImages.limit(1) %>
                    <div class="mainImage">
                        <a href="$BusinessPageImage.SetRatioSize(900,600).URL" data-lightbox="gdContent" title="$Title">
                           <img src="$BusinessPageImage.CroppedImage(900,600).URL" title="$Title" alt="$Title" />
                        </a>
                    </div>
                    <% end_loop %>
                </div>                        
            <% end_if %> 
            <% if $BusinessAddress %>
            <p><strong>Address:</strong> $BusinessAddress</br>
            <% if $Telephone %><strong>Telephone:</strong> $Telephone</br><% end_if %>
            <% if $OpeningHours %><strong>Opening hours:</strong> $OpeningHours</br><% end_if %>

            </p>
            <hr>
            <% end_if %>
            $Content
     
        </div>


        <div class="logoSearch desktop <% if $FullWidthPage %> fullWidthLayout<% end_if %>">
            <% include Search %>
        </div>

        <div class="sideBar">
            <% include ImageLinks %>
            <% include BusinessPageImages %>
            $MyWidgetArea
            <% include HasMap %>
        </div>
    </div>
        
</div>

<% require css("gallery/css/gallery.css") %>
<% require css("gallery/css/lightbox.css") %>
<% require javascript("gallery/javascript/lightbox.min.js") %>    
