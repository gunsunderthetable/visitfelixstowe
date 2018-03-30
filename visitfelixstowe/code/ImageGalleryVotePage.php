<?php

	class ImageGalleryVotePage extends Page{
        public static $db = array(
            'ThankYouHeader' => 'Text',
            'ThankYouMessage' => 'Text'
        );
        public static $has_one = array(
            'Folder' => 'Folder',
        );
		
		function getCMSFields(){
            $fields = parent::getCMSFields();
			$fields->addFieldToTab('Root.OnSubmit', new TextField('ThankYouHeader', 'header for thanks message'));
			$fields->addFieldToTab('Root.OnSubmit', new TextField('ThankYouMessage', 'Thanks message'));
            $fields->addFieldToTab('Root.Main', new TreeDropdownField('FolderID', 'Folder', 'Folder'),'Content');
            return $fields;
		}
		
        public function getFiles()
        {
            if($this->FolderID)
            {
                $records = File::get()->filter(array(
                    'ParentID' => $this->FolderID
                ))->sort('LastEdited','DESC');
                return $records;
            }                        
        }
	}
	
	class ImageGalleryVotePage_Controller extends Page_Controller{
        static $allowed_actions = array(
            'VoteForm',
            'SaveVoteForm'
        );
        
        public function VoteForm() {
            // Create empty fields var
            $fields = new FieldList();
            //get our files from the function
            $imageFiles=$this->getFiles();
            $imageCounter=1;
            $pos=1;
            // loop through the children (these are the form galleries)
            foreach ($imageFiles as $imageFile) {
                if ($pos==5) { 
                    //set a counter on the image to control styles on front-end
                    $pos=1;
                }
                $title=$imageFile->Title;
                $fields->push(new LiteralField('File','<div class="galleryBox pos-'.$pos.'">'));
                $fields->push(new LiteralField('File','<div class="content">'));
                $fields->push(new LiteralField('File','<a href="'.$imageFile->SetRatioSize(700,600)->URL.'" rel="shadowbox[GBN]" title="'.$title.'">'));
                // $imageFile->addExtraClass("Monterey");
                $fields->push(new LiteralField('File','<img class="example-image" src="'.$imageFile->CroppedImage(400,400)->URL.'" />'));
                $fields->push(new LiteralField('File','</a>'));
                $checkboxTitle='voteFor '.$title.$imageCounter;
                $checkBoxField=(new CheckboxField($checkboxTitle,'vote for '.$title));
                $checkBoxField->addExtraClass("myCheckBox");
                $fields->push($checkBoxField);
                $fields->push(new LiteralField('File','</div>'));
                $fields->push(new LiteralField('File','</div>'));
                
                $imageCounter++;
                $pos++;
            }
            $fields->push(new LiteralField('File','<div id="voteImageForm" class="clearFix">'));
            
            $fields->push(new TextField('Email','Your email address'));

            // Create action
            $actions = new FieldList(
                new FormAction('SaveVoteForm', 'Vote')
            );
            $fields->push(new LiteralField('File','</div>'));

            // Create Validators
            $validator = new RequiredFields('Email');
            return new Form($this, 'VoteForm', $fields, $actions, $validator);
       }

       function SaveVoteForm($data, $form) {
            $vote = new ImageGalleryVote();
            $vote -> Email = $data['Email'];
            
            // loop through the form data. build key/value pairs and give the keys predictable names
            foreach ($data as $key => $value) {
                if ($value != '' && substr($key,0,1) == 'v') {
                    $selectedImage=$key;
                }
            }
            $page = $this -> Title;
            $vote -> Vote = $selectedImage;
            $vote -> CompetitionCategory = $page;
            $rightNow = date("Y-m-d H:i:s");
            //$rightNow = date();
            $vote -> Date = $rightNow;
            $vote -> write();
            $this->redirect($this->AbsoluteLink().'?success=1');
       }

        public function Success()
        {
            return isset($_REQUEST['success']) && $_REQUEST['success'] == "1";
        }               
	}
