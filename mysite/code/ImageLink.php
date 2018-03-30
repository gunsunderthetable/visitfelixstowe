<?php

    class ImageLink extends DataObject{
        public static $db = array(
            'Title' => 'Varchar(200)',
            'Content' => 'Text',
            'SortOrder'=>'Int',
            'Aspect' => 'Varchar(12)'
                    );

        public static $has_one = array(
            'LinkImage' => 'Image',
            'Page' => 'Page',
            'LinkPage' => 'SiteTree'
        );

        public function getCMSFields(){
            return new FieldList(
                new TextField('Title', 'First line'),
                new TextAreaField('Content', 'Second line'),
                DropdownField::create('Aspect', 'Aspect', array('Portrait'=>'Portrait','Landscape'=>'Landscape')),
                new TreeDropdownField('LinkPageID', 'Select a page to link to from the image', 'SiteTree'),
                new UploadField('LinkImage', 'Image')
                );
            }
    }
