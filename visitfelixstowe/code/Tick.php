<?php

	class Tick extends DataObject{
		
		public static $db = array(
			'Title' => 'Varchar(200)',
			'Description' => 'Text',
			'SortOrder' => 'Int'
		);
		
		public static $has_one = array(
			'TickImage' => 'Image',
			'HomePage' => 'HomePage',
			'TickerLink' => 'SiteTree'
		);
                
        public static $default_sort='SortOrder';		
                
		public function getCMSFields(){
			return new FieldList(
				new TextField('Title', 'Ticker title'),
				new TextareaField('Description', 'Description'),
				new TreeDropdownField('TickerLinkID', 'Select a page to link to from this ticker', 'SiteTree'),
				new UploadField('TickImage', 'Image')
			);
		}
		
	}