jQuery.noConflict();
jQuery(function($)
{
	if($('#voteImageGallery').length)
	{
            $('#voteImageGallery a').lightBox({
                imageLoading: 'assetlister/images/lightbox-ico-loading.gif',
                imageBtnClose: 'assetlister/images/lightbox-btn-close.gif',
                imageBtnPrev: 'assetlister/images/lightbox-btn-prev.gif',
                imageBtnNext: 'assetlister/images/lightbox-btn-next.gif'
            });	
	} else {
		alert('not found');
	}
});