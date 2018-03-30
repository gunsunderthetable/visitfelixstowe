<?php
	class ContentPageImage extends DataObject{
		
		static $db = array(
			'Title' => 'Varchar(200)',
			'SortOrder' => 'Int'
		);
		
		static $has_one = array(
			'ContentPageImage' => 'Image',
			'GreatDaysContentPage' => 'GreatDaysContentPage',
			'GreatDaysBusinessListing' => 'GreatDaysBusinessListing'
		);

        public static $default_sort='SortOrder';		
                
		public function getCMSFields(){
			return new FieldList(
				new TextField('Title', 'Slide title'),
				new UploadField('ContentPageImage', 'Image')
			);
		}		
		
		function getRealTitle() {
			$title = "";
			if($this->Title){
				$title = $this->Title;
			} else {
				$title = $this->PageID ? $this->Page()->Title : "" ;
			}
			return $title; 
		}
		
		function getImageName(){
			return $this->ContentPageImageID ? $this->ContentPageImage()->Name : "";
		}
	}
