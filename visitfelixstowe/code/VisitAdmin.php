<?php

class VisitAdmin extends ModelAdmin 
{

    private static $managed_models = [
        'ImageGalleryVote'
    ];

    private static $url_segment = 'VisitAdmin';

    private static $menu_title = 'VF Admin';
}