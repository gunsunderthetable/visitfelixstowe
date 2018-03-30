
<div id="footer" class="clearFix">
    <div class="container">
      
        <div id="colophonFooter">
            <div class="colophon left">
                <p>&copy; $Now.Year $SiteConfig.Title</p>
                <div id="socialButtons">
                    <% if $SiteConfig.TwitterLink %><a href="$SiteConfig.TwitterLink" target="_blank" alt="twitter"><img src ="$ThemeDir/images/twitter.png" /></a><% end_if %>
                    <% if $SiteConfig.FacebookLink %><a href="$SiteConfig.FacebookLink" target="_blank" alt="facebook"><img src ="$ThemeDir/images/facebook.png" /></a><% end_if %>
                    <% if $SiteConfig.FacebookLink %><a href="$SiteConfig.YoutubeLink" target="_blank" alt="youtube"><img src ="$ThemeDir/images/youtube.png" /></a><% end_if %>
                </div>
            </div>
            <div class="colophon right">
                <p>
                    <% loop $FooterLinks %>
                    <a href="$URL" class="$FirstLast" title="$LinkText">$LinkText</a><% if $Last %><% else %>&nbsp;|&nbsp;<% end_if %>        
                    <% end_loop %>
                </p>
            </div>            
        </div>
        <div id="cloudLogo">
            <a href="http://www.suffolk.cloud" target="_blank"><img src = "mysite/images/cloud_footer_logo.png" alt="suffolk cloud" /></a>
        </div>
    </div>
</div>
