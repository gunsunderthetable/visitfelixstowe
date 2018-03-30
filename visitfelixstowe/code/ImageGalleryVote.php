<?php

class ImageGalleryVote extends DataObject{
            static $db = array(
                'Email' => 'Varchar(40)',
                'Date'  => 'Date',
                'Vote' => 'Varchar(100)',
                'CompetitionCategory' => 'Varchar(200)'
            );
            
           static $searchable_fields = array(
                'Email',
                'CompetitionCategory'
            );
            static $summary_fields = array( 
                'CompetitionCategory',
                'Email', 
                'Date',
                'Vote'
            );           
}