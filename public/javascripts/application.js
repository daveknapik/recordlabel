// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
function confirm_destroy(element, action, authenticity_token){	
	if (confirm("Are you sure?")) {
		$.ajax({
			url: action,
			data: {_method: 'delete', authenticity_token: authenticity_token},
			dataType: 'script',
			type: 'POST',
			success: success_delete
		});
	}
	return false;
}