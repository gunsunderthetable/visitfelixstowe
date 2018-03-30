
UPDATE sitetree_live
SET ParentID = '5280'
WHERE ClassName = 'CalendarEvent'

UPDATE sitetree
INNER JOIN sitetree_live ON sitetree.ID = sitetree_live.id
SET sitetree.ParentID = '5280'
WHERE sitetree_live.ClassName = 'CalendarEvent'


UPDATE SiteTree_Live
SET ParentID = '5280'
WHERE ClassName = 'CalendarEvent'

UPDATE SiteTree
INNER JOIN SiteTree_Live ON SiteTree.ID = SiteTree_Live.id
SET sitetree.ParentID = '5280'
WHERE SiteTree_Live.ClassName = 'CalendarEvent'