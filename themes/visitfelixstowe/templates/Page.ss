<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <% base_tag %>
        <title>$Title</title>
        <meta name="description" content="Visit Felixstowe">
        <meta name="agency" content="SuffolkCloud">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" type="image/png" href="themes/visitfelixstowe/images/favicon.png" />
        <link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/jquery.sidr.light.css">
        <link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/normalize.css">
        <link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/skeleton.css">
        <link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/site.css">
        <link href="https://fonts.googleapis.com/css?family=Oswald:400,700" rel="stylesheet">
        <% include GoogleAnalytics %>
        <link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:700" rel="stylesheet">
    </head>
    <body class="$ClassName">
        <div id="sidr">
            <% include MobileNav %>
        </div>      

        <div class="container mainWrap">
            <% include Header %>
            $Layout
        </div>
        <% include Footer %>
        <script>
            jQuery(document).ready(function() {
              jQuery('#sidr-menu').sidr({side: 'left'});
            });
        </script>         
    </body>
</html>
<% require javascript(mysite/javascript/jquery.flexslider-min.js) %>
<% require javascript(mysite/javascript/flex_init.js) %>

<% require css(mysite/css/flexslider.css) %>