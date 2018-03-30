<?php

	class Box extends DataObject{
		
		public static $db = array(
			'Title' => 'Varchar(200)',
			'Colour' => 'Varchar(30)',
            'SortOrder'=>'Int',
		);
		
		public static $has_one = array(
			'BoxImage' => 'Image',
			'HomePage' => 'HomePage',
			'LinkPage' => 'SiteTree'
		);
                
        public static $default_sort='SortOrder';		
                
		public function getCMSFields(){
			$colourDrop=DropdownField::create('Colour','Box colour', array(
				'unselected' => 'unselected',
				'blue' => 'blue',
				'orange' => 'orange',
				'green'=> 'green',
				'yellow'=> 'yellow')
			);

			$positionDrop=DropdownField::create('TextPosition','Text position', array(
				'unselected' => 'unselected',
				'top' => 'top',
				'middle' => 'middle',
				'bottom'=> 'bottom'));

			return new FieldList(
				new TextField('Title', 'Box title'),
				$colourDrop,
				new TreeDropdownField('LinkPageID', 'Select a page to link to from the image', 'SiteTree'),
				new UploadField('BoxImage', 'Image')
			);
		}
		
	}
