<div id="header">
    <% with $TheHomePage %>
    <% if Slides %>
    <div id="holdsTheSlider" class="desktop">
        <div class="flexslider loading">
          <ul class="slides">
            <% loop Slides %>
                <li>
                    <% if $Page.Link %>
                    <a href="$Page.Link"><img src="$SlideImage.CroppedImage(1360,350).URL" alt="$Title" title="$Title" /></a>
                    <% else %>
                    <img src="$SlideImage.CroppedImage(1360,350).URL" alt="$Title" title="$Title" />
                    <% end_if %>
                </li>
            <% end_loop %>
          </ul>
        </div>
    </div>
    <% end_if %>
    <% end_with %>
</div>

<div id="mobileHeader" class="mobile">
    <div class="container">
        <div id="headerPanel" class="twelve columns clearFix">
            <a href="$BaseHref"><img class="mobileLogo" src="$ThemeDir/images/logo.png" alt="logo" Title="logo" /></a>
            <div id="headerTools">
                <a class="menuButton mobileNav" id="sidr-menu" href="#sidr"><img src="$ThemeDir/images/mobile_menu.png" alt="mobile menu button" /></a>
                <% include Search %>
            </div>
        </div>  
    </div>
</div>

