<?php

    class GreatDaysBusinessListing extends Page {
            private static $db = array(
                'AltText' => 'Text',
                'SideBarQuote' => 'Text',
                'SideBarQuotee' => 'Text',
                'RandomBusinessHeader' => 'Text',
                'ShowOneRandom' => 'Boolean',
                'HowManyRandom' => 'Varchar(4)',
                'ShowFeatured' => 'Boolean'
            );
            
            private static $has_one = array(
                'ContentPageImage' => 'Image'
            );

            function getCMSFields(){
                $fields = parent::getCMSFields();
                $fields->addFieldToTab('Root.Main', new UploadField('MainImage', 'Image'), 'Content');
                $fields->addFieldToTab('Root.Main', new TextField('AltText', 'Alt text for image'), 'Content');
                $fields->addFieldToTab('Root.SideBar', new TextField('SideBarQuote', 'Quote'));
                $fields->addFieldToTab('Root.SideBar', new TextField('SideBarQuotee', 'Person being quoted'));
                $fields->addFieldToTab('Root.Businesses', new TextField('RandomBusinessHeader', 'Header for the random business listing'));
                $fields->addFieldToTab('Root.Businesses', new TextField('HowManyRandom', 'How many random businesses to show as main content'));
                $fields->addFieldToTab('Root.Businesses', new CheckBoxField('ShowFeatured', 'Show featured businesses in the sidebar'));
                return $fields;
            }
            
            static $allowed_children = array('GreatDaysBusinessPage');
            
            public function SortedChildren(){ 
               // $children will be a DataObjectSet 
               $children = $this->Children();

               if( !$children ) 
                  return null; // no children, nothing to work with

                  $children->sort('Title');

                   // return sorted set 
                   return $children; 
            }          
            

            
            function getRandomChild(){
                 if($randomChildren=DataObject::get("greatDaysBusinessPage","ParentID = $this->ID","RAND()",null,"0,1")) {
                     return $randomChildren;
                 } else {
                     return null;
                 }
            }
            
            function getRandomChildren(){
                 if(empty($this->HowManyRandom)) {
                     return null;
                 }
                 if ($randomChild=DataObject::get("greatDaysBusinessPage","ParentID = $this->ID","RAND()",null,"0,$this->HowManyRandom")) {
                     return $randomChild;
                 } else {
                     return null;
                 }
            }
            
            function getFeaturedChildren(){
                 if($featuredChildren=DataObject::get("greatDaysBusinessPage","ParentID = $this->ID AND FeaturedBusiness > 0","FeaturedBusiness DESC","",'4')) {
                     return $featuredChildren;
                 } else {
                     return null;
                 }
            }

    }

    class GreatDaysBusinessListing_Controller extends Page_Controller {
   
    	private static $allowed_actions = array(
    		'ChildrenSearchForm',
    		'results'
    	);
    	
    	
    	public function ChildrenSearchForm() {
    		$fields = new FieldList(
                new TextField('Search','')
    		);
                
    		$form = new SearchForm($this, 'ChildrenSearchForm', $fields);
            $form->setFormAction($this->Link('results'));
    		return $form;
    	}

    	public function results() {		
                $sqlString='';
                $sqlOrder = 'Title ASC';    
                if ($Search = $this->request->getVar("Search")) {
                    $sqlString="Title LIKE '%$Search%' AND ParentID = $this->ID OR Content LIKE '%$Search%' AND ParentID = $this->ID";
                }
                
                $Results = DataObject::get('greatDaysBusinessPage',
                    $sqlString,
                    $sqlOrder,
                    '',
                    ''
                );
                $totalResults = count($Results);
                $Output = new ArrayData(array(
                    'Query'=>$Search,
                    'Bonzo' => $sqlString,
                    'Count' => $totalResults,
                    'Title' => 'Business Search results',
                    'Results' => $Results
                ));	
                return $this->customise($Output);							
                  
                Director::redirect($this->Link());
    	}
    }

