UPDATE Page
        INNER JOIN
    EventPage ON Page.ID = EventPage.ID 
SET 
    Page.Address = EventPage.Address;

UPDATE CalendarEvent
        INNER JOIN
    EventPage ON CalendarEvent.ID = EventPage.ID 
SET 
    CalendarEvent.Location = EventPage.Address;