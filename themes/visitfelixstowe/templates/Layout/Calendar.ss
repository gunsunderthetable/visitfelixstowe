<div class="twelve columns">
    <div class="row">
     $Breadcrumbs 
    </div>
    
    <div id="standardPage" <% if $FullWidthPage %>class="fullWidthLayout"<% end_if %>>
        <div class="pageContent">
            <h1>$Title</h1>
            <%-- <h2>Debug code - $ID</h2> --%>
            $Content
            <h2>$DateHeader</h2>
            <% if Events %>
            <div id="event-calendar-events">
              <% include EventList %>
            </div>
            <% else %>
              <p><% _t('NOEVENTS','There are no events') %>.</p>
            <% end_if %>
            
            $Form
            $PageComments
        </div>
        <h2 class="eventHeader">Search Events</h2>

        <div class="logoSearch">
            <div id="eventSearchWrapper">
                $EventTextSearch
            </div>
        </div>
        
        <div class="sideBar">
            $CalendarWidget
            <div class="half widget calendar-controls">
                $MonthJumper
                <h3>Go to...</h3>
                <% include QuickNav %>
            </div>

            $MyWidgetArea
            <% include ImageLinks %>
            <% include HasMap %>
        </div>
    </div>
            
</div>

