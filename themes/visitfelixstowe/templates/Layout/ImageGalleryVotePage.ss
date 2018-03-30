<div class="twelve columns">
     $Breadcrumbs 
    <div id="standardPage" class="fullWidthLayout">
        <div class="pageContent">
            <h1>$Title</h1>
            <div id="voteImageGallery" class="clearFix">

                <% if Success %>
                <div id="successMessage">
                    <h1>$ThankYouHeader</h1>
                    <p>$ThankYouMessage</p>
                </div>
                <% else %>
                $Content        
                $VoteForm
                <% end_if %>
            </div>
            $Form
            $PageComments
        </div>

    </div>
        
</div>
<% require css("gallery/css/gallery.css") %>
<% require css("assetlister/css/jquery.lightbox-0.5.css") %>
<% require javascript("assetlister/javascript/jquery.lightbox-0.5.pack.js") %>
<% require javascript("visitfelixstowe/javascript/imageGalleryVoteLister.js") %>
<% require javascript(visitfelixstowe/javascript/photocomp.js) %>

