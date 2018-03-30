<div class="twelve columns">
     $Breadcrumbs 
    <div id="standardPage" <% if $FullWidthPage %>class="fullWidthLayout"<% end_if %>>
        <div class="pageContent">
            <h1>$Title</h1>
            $Content
            <div id="searchWrapper" class="inPage">
             $ChildrenSearchForm
            </div>
     
            <% if Children %>
   
            <div id="businessListing">
                <div id="myList-nav"></div>
                <ul id="myList">
                <% control SortedChildren %>
                    <li>
                        <h2><a href="$Link">$Title</a></h2>
                        <p>$Content.FirstParagraph <a href="$Link">Read More </a></p>
                    </li>
                <% end_control %>
                </ul>
            </div>
            <% end_if %>
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
<%-- this here is a comment --%>



<% require css(themes/visitfelixstowe/css/listnav.css) %>
<% require javascript(themes/visitfelixstowe/javascript/jquery.listnav.js) %>
<% require javascript(themes/visitfelixstowe/javascript/atoz.js) %>