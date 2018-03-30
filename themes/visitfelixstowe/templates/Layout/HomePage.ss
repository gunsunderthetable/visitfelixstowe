<div id="pagePanel">

    <div id="homePanel">
        <% if $Content %>
        <div id="homeIntro" class="clearFix">
            <div class="desktop">
                $Content
            </div>
            <div class="mobile">
                $MobileContent
            </div>
        </div>

        <% end_if %>

        <% if Boxes %>
        <div id="boxes" class="clearFix">
        <% loop Boxes %>
            <div class="box deskMod-$Modulus(2) $Colour">
                <div class="content">
                    <a href="$LinkPage.Link">
                    <div class="boxText">
                        <h2>$Title</h2>
                    </div>
                    <div class="linkButton $Colour">
                        <p>Read More</p>
                    </div>
                    <% if $BoxImageID %>
                        <img src="$BoxImage.CroppedImage(500,340).URL" alt="$Title" title="$Title" />
                    <% end_if %>
                   </a>
                </div>
            </div>
        <% end_loop %>
        </div>
        <% end_if %>

    </div> 

    <div class="logoSearch desktop <% if $FullWidthPage %> fullWidthLayout<% end_if %>">
        <% include Search %>
        <div id="socialButtons" class="panel clearFix">
            <% if $SiteConfig.TwitterLink %><a href="$SiteConfig.TwitterLink" target="_blank" alt="twitter"><img src ="$ThemeDir/images/twitter_colour.png" /></a><% end_if %>
            <% if $SiteConfig.FacebookLink %><a href="$SiteConfig.FacebookLink" target="_blank" alt="facebook"><img src ="$ThemeDir/images/facebook_colour.png" /></a><% end_if %>
            <% if $SiteConfig.FacebookLink %><a href="$SiteConfig.YoutubeLink" target="_blank" alt="youtube"><img src ="$ThemeDir/images/youtube_colour.png" /></a><% end_if %>
        </div>        
    </div>

    <div class="sideBar homePage desktop <% if $FullWidthPage %>fullWidthLayout<% end_if %>">
        <% include Ticker %>

        <% if $News %>
        <div id="news" class="nav clearFix">
            <h1 class="green">Features and Stories</h1>
            <% loop $News %>
            <div class="feature $FirstLast">
                <a href="$Link"><h3>$Title</h3></a>
                <p>$Content.FirstSentence</p>
            </div>
            <% if $First %>
                <% if MainImageID %>
                    <div class="imgWrapper">
                    <% with $MainImage %>
                        <img class="featureImg" src="$CroppedImage(600,260).URL" alt="$Title" />
                    <% end_with %>                    
                    </div>
                <% else %>
                    <div class="iHateSpacers"></div>
                <% end_if %>
            <% end_if %>                    
            <% end_loop %>
            <a class="clearFix readMore" href="$NewsHolder.Link">See all features and stories</a>
        </div>
        <img class="narDiv" src="$ThemeDir/images/divider_wide_green.png" />

        <% end_if %>
        <div id="widgets">
            $MyWidgetArea
        </div>
        <% include ImageLinks %>
    </div>

</div>




