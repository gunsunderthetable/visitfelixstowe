<?php

	class GreatDaysBusinessPage extends Page{
		
		private static $db = array(
            "BusinessAddress" => "Text",
            "Telephone" => "Text",
            "Facilities" => "Text",
            "OpeningHours" => "Text",
            "ContactName" => "Text",
            "FeaturedBusiness" => "VarChar(10)",
            "GalleryTitle" => "Varchar(40)"
		);
		
        private static $has_many = array(
			"BusinessPageImages" => "BusinessPageImage"
		);
		
		
		public function getCMSFields(){
			$fields = parent::getCMSFields();

	        $fields->addFieldToTab("Root.BusinessPageImages", new TextField('GalleryTitle', 'Title for sidebar gallery'));
			
			// add business page images gridfield                        
	        $gridFieldBoxConfig = GridFieldConfig::create()->addComponents(
	          new GridFieldSortableRows('SortOrder'),                         
	          new GridFieldToolbarHeader(),
	          new GridFieldAddNewButton('toolbar-header-right'),
	          new GridFieldSortableHeader(),
	          new GridFieldDataColumns(),
	          new GridFieldPaginator(10),
	          new GridFieldEditButton(),
	          new GridFieldDeleteAction(),
	          new GridFieldDetailForm()
	        );
	        $gridField = new GridField("BusinessPageImages", "Images", $this->BusinessPageImages(), $gridFieldBoxConfig);
	        $fields->addFieldToTab("Root.BusinessPageImages", $gridField); 			
	
                        
       		$fields->addFieldToTab('Root.BusinessDetails', new TextField('ContactName', 'Business contact name'));
   			$fields->addFieldToTab('Root.BusinessDetails', new TextField('BusinessAddress', 'Business address'));
   			$fields->addFieldToTab('Root.BusinessDetails', new TextField('Telephone', 'Business telephone'));
   			$fields->addFieldToTab('Root.BusinessDetails', new TextField('Facilities', 'Business facilities'));
   			$fields->addFieldToTab('Root.BusinessDetails', new TextField('OpeningHours', 'Opening hours'));
   			$fields->addFieldToTab('Root.BusinessDetails', new TextField('FeaturedBusiness', 'Featured business value - 0 means not featured, higher value controls featuredness'));
                        
			return $fields;
		}
		
                 
                
	}
	
	class GreatDaysBusinessPage_Controller extends Page_Controller{
            	function init()
		{		
			parent::init();
                        
			Requirements::javascript('mysite/javascript/noConflict.js');
                        Requirements::javascript('visitfelixstowe/javascript/shadowbox.js');
                        Requirements::themedCSS('shadowbox','screen');
                        Requirements::customScript("
                                Shadowbox.init({
                                handleOversize: 'drag',
                                modal: true
                                });");                         
		}
		
	}
