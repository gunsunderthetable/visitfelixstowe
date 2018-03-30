<?php

	class GreatDaysContentPage extends Page{
		private static $db = array(
        	"SideFeatureQuote" => "Text",
            "SideFeatureQuotee" => "Text",
            "ShowSideBar" => "Boolean",
            "ShowChildrenSummary" => "Boolean",
            "HideMenu" => "Boolean",
            "GalleryTitle" => "Varchar(40)"
			);

		private static $defaults = array(
            "GalleryTitle" => "Gallery"			
			);

        private static $has_many = array(
			"ContentPageImages" => "ContentPageImage"
			);

       	private static $hide_ancestor = 'Page';
		
        public function getCMSFields(){
			$fields = parent::getCMSFields();

	        $fields->addFieldToTab("Root.ContentPageImages", new TextField('GalleryTitle', 'Title for sidebar gallery'));

			// contentpageimages gridfield                      
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

	        $gridField = new GridField("ContentPageImages", "Images", $this->ContentPageImages(), $gridFieldBoxConfig);
	        $fields->addFieldToTab("Root.ContentPageImages", $gridField); 


            $fields->addFieldToTab('Root.SideBar', new CheckboxField('ShowSideBar', 'Show the sidebar on this page'));
            $fields->addFieldToTab('Root.Main', new CheckboxField('HideMenu', 'Hide the right hand menu of child pages'),'Content');
            // $fields->addFieldToTab('Root.Main', new CheckboxField('ShowChildrenSummary', 'Show the children of the page with first paragraph of content'),'Content');
   			$fields->addFieldToTab('Root.SideBar', new TextField('SideFeatureQuote', 'Quote'));
   			$fields->addFieldToTab('Root.SideBar', new TextField('SideFeatureQuotee', "Quoted person's name"));
                        
			return $fields;
		} 
                
	}
	
	class GreatDaysContentPage_Controller extends Page_Controller{
			
	}
