jQuery(document).ready(function() {

	jQuery('input[type="checkbox"]').on('change', function() {
    jQuery('input[type="checkbox"]').not(this).prop('checked', false);  
	});

 });