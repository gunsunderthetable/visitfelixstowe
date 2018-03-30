<?php

class SiteConfigExtension extends DataExtension {
    private static $db = array(
        'FooterLinks' => 'Text',
        'HeaderLinks' => 'Text',
        'TwitterLink' => 'Text',
        'FacebookLink' => 'Text',
        'YoutubeLink' => 'Text',
        'GoogleAnalytics' => 'Varchar(20)',
        'HeaderSize' => 'Varchar(20)',
        'HeaderColour' => 'Varchar(20)',
        'HeaderDropShadow' => 'Boolean',
        'HeaderBackground' => 'Boolean',
        'SiteColour' => 'Text',
        'HeaderFont' => 'Text',
        'BodyFont' => 'Text',
        'HeaderDepth' => 'Text',
        'HideHeaderText' => 'Text',
        'HideSearch' => 'Boolean',
        'ColourStyle' => 'Text'
    );
    
    private static $has_one = array(
        'Favicon' => 'Image',
        'Masthead' => 'Image',
        'Logo' => 'Image'
    );

    public function updateCMSFields(FieldList $fields)  {

        $fields->addFieldToTab('Root.Main', new TextField('GoogleAnalytics', 'Google analytics ID'));


        $fields->addFieldToTab('Root.SocialMedia', new TextField('TwitterLink', 'link to Twitter (include http)'));
        $fields->addFieldToTab('Root.SocialMedia', new TextField('FacebookLink', 'link to Facebook (include http)'));
        $fields->addFieldToTab('Root.SocialMedia', new TextField('YoutubeLink', 'link to YouTube (include http)'));

        $fields->addFieldToTab('Root.Footer', new TextareaField('FooterLinks', 'Footer links - one link per line. The format is: Page or external web address&lt;space&gt;Text to use as the link<br>For example - /about-us About our company <br>or http://www.google.co.uk Google'));
        $fields->addFieldToTab('Root.Header', new TextareaField('HeaderLinks', 'Header links - one link per line. The format is: Page or external web address&lt;space&gt;Text to use as the link<br>For example - /about-us About our company <br>or http://www.google.co.uk Google'));
        $faviconField=UploadField::create('Favicon', 'Your Favicon')->setDescription("Your Favicon is a small image that will be displayed in a user's browser tab. You can leave this blank if you don't have one.");
        $fields->addFieldToTab('Root.HeaderImages', $faviconField);
    }
    
}
