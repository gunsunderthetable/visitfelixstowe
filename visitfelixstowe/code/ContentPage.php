<?php

class ContentPage extends Page {
            public static $db = array(
                'Intro' => 'Text'
            ); 
   
            private static $hide_ancestor = 'Page';

            public function getCMSFields() {
                $fields = parent::getCMSFields();
                $fields->addFieldToTab('Root.Main', new TextField("Intro", "Main page intro text"), "Content");  
                
                return $fields; 
            }     	

}

class ContentPage_Controller extends Page_Controller {

	
}
