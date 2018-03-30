<% if ContentPageImages %>
    <div id="sideImageWrapper" class="nav clearFix">
    <% if $GalleryTitle %><h1 class="green">$GalleryTitle</h1><% end_if %>
        <div id="sideImages" class="clearFix">
        <% loop ContentPageImages.limit(99,1) %>
        <div class="sideImage $EvenOdd">
            <a href="$ContentPageImage.SetRatioSize(800,600).URL" data-lightbox="gdContent" title="$Title">
                <img src="$ContentPageImage.CroppedImage(620,480).URL" alt="$Title" title="$Title">
            </a>
        </div>
        <% end_loop %>
        </div>
    </div>
<% end_if %>