<?php

	class Slide extends DataObject{
		
		public static $db = array(
			'Title' => 'Varchar(200)',
			'Description' => 'Text',
            'ExternalLink' => 'Text',
            'ShowLink' => 'Boolean',
            'SortOrder'=>'Int'                          
		);
		
		public static $has_one = array(
			'SlideImage' => 'Image',
			'HomePage' => 'HomePage',
			'Page' => 'SiteTree'
		);
                
        public static $default_sort='SortOrder';		
                
		public function getCMSFields(){
			return new FieldList(
				new TextField('Title', 'Slide title'),
				new TextareaField('Description', 'Slide description'),
				new TreeDropdownField('PageID', 'Select a page to link to from the image', 'SiteTree'),
				new UploadField('SlideImage', 'Image')
			);
		}
		
	}
