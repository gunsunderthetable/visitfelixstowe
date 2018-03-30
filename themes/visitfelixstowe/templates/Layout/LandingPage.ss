<div id="pagePanel">
     $Breadcrumbs 
    <div id="homePanel">
        <h1>$Title</h1>
        <% if $Content %>
        <div id="homeIntro" class="clearFix">
            $Content
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
    <% if $ShowEventSearch %>
    <h2 class="eventHeader">Search Events</h2>
    <div class="logoSearch">
        <div id="eventSearchWrapper">
            $EventTextSearch
        </div>
    </div>
    <% else %>

    <div class="logoSearch desktop <% if $FullWidthPage %> fullWidthLayout<% end_if %>">
        <% include Search %>
    </div>
    <% end_if %>

    <div class="sideBar homePage desktop <% if $FullWidthPage %>fullWidthLayout<% end_if %>">


        <% if $ShowEventSearch %>
        <% with EventCalendar %>
            $CalendarWidget
            <div class="half widget calendar-controls">
                $MonthJumper
                <h3>Go to...</h3>
                <% include QuickNav %>
            </div>
        <% end_with %>

        <% include Ticker %>

        <% end_if %>
            <% include SubNav %>
            <% include ImageLinks %>
            <% include ContentPageImages %>
            $MyWidgetArea
            <% include HasMap %>

        <div id="widgets">
            $MyWidgetArea
        </div>
    </div>

</div>




