<%-- --------------------------------------- sub nav ---------------------------------------------- --%>
<% if $Parent.ClassName = "AttractionsPage" %>
<% else %>
<% if $Menu(2) %>
<div id="subNav" class="nav desktop clearFix">
   <h1 class="yellow">In this section</h1>
    <ul class="clearFix">
        <% loop Menu(2) %>
        <li>
            <a href="$Link" title="$Title" class="$LinkingMode">$MenuTitle</a>
            <% if $Children %>
            <% if $LinkOrSection = section %>
            <ul>
                <% loop $Children %>
                <li>
                    <a href="$Link" title="$Title" class="$LinkingMode">$MenuTitle</a>
                    <% if $Children %>
                    <% if $LinkOrSection = section %>
                    <ul>
                        <% loop $Children %>
                        <li>
                            <a href="$Link" title="$Title" class="$LinkingMode">$MenuTitle</a>
                                <% if $Children %>
                                <% if $LinkOrSection = section %>
                                <ul>
                                    <% loop $Children %>
                                    <li>
                                        <a href="$Link" title="$Title" class="$LinkingMode">$MenuTitle</a>
                                    </li>
                                    <% end_loop %>
                                </ul>
                                <% end_if %>
                                <% end_if %>
                        </li>
                        <% end_loop %>
                    </ul>
                    <% end_if %>
                    <% end_if %>
                </li>
                <% end_loop %>
            </ul>
            <% end_if %>
            <% end_if %>
        </li>
        <% end_loop %>
    </ul>
</div>
<% end_if %>
<% end_if %>
