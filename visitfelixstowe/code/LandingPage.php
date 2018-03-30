<?php
class LandingPage extends HomePage {

    public static $db = array(
      'ShowEventSearch' => 'Boolean'
    );

    public static $has_many = array(
    );  

    public function getCMSFields() {
      $fields = parent::getCMSFields();
      $fields->removeByName("Slides");
      $fields->removeByName("NewsAndEvents");
      $fields->addFieldToTab('Root.Main', new CheckBoxField('ShowEventSearch', 'Show event search'), 'Content');

      return $fields;

    }
    public function getEventCalendar() {
      $calendars = Calendar::get();
      return $calendars->first();
    }
    
}

class LandingPage_Controller extends HomePage_Controller {

    private static $allowed_actions = array (
        'EventTextSearch',
        'results'
      );
    
  	public function EventTextSearch()
  {
            $fields = new FieldList(
                new TextField('EventQuery','')
            );

            $actions = new FieldList(
                FormAction::create("results")->setTitle("Go")
            );

            $form = new Form($this, 'EventTextSearch', $fields, $actions);
            return $form;  
  }

  public function results($data, Form $form) {
            
      $eventQuery=$data['EventQuery'];

      $ormResults = SiteTree::get()
        ->sort(array('Title'=>'ASC'))->filter(array('Title:PartialMatch' => $eventQuery,'ClassName' => 'CalendarEvent'));
      
    
    $templateResults = new arraylist();
    
    foreach($ormResults as $row) {
      $calendarEvent = CalendarEvent::get()->byID($row->ID);
      $thisLocation=$calendarEvent->Location;
      $myDates = $calendarEvent->DateTimes();
      
      foreach ($myDates as $date) {
          if ($date->EndDate >= date("Y-m-d")) {
            $templateResults->push(new ArrayData(array(
            'Location' => $thisLocation,
            'LinkToEvent' => $row->Link(),
            'Title' => $row->Title,
            'ID' => $row->ID,
            'StartDate' => $date->StartDate 
          )));
          } 
        }

      }

      $output=array(
              'Title' => 'Search results',
              'Results' => $templateResults,
              'Query' => $query
      );

      return $this->owner->customise($output)->renderWith(array('EventSearchPage_results', 'Page'));
            
    }
}
