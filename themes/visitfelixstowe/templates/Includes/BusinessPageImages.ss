<% if BusinessPageImages %>
    <div id="sideImageWrapper" class="nav clearFix">
    <% if $GalleryTitle %><h1 class="green">$GalleryTitle</h1><% end_if %>
        <div id="sideImages" class="clearFix">
        <% loop BusinessPageImages.limit(12,1) %>
        <div class="sideImage $EvenOdd">
            <a href="$BusinessPageImage.SetRatioSize(800,600).URL" data-lightbox="gdContent" title="$Title">
                <img src="$BusinessPageImage.CroppedImage(155,120).URL" alt="$Title" title="$Title">
            </a>
        </div>
        <% end_loop %>
        </div>
    </div>
<% end_if %>