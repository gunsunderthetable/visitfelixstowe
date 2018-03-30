INSERT into ImageGallery_Images (ID,ImageGalleryID,ImageID,SortOrder)
select  ID,ImageGalleryID,GImageID,SortOrder from GalleryImage;