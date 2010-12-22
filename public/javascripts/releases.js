function success_delete(data, textStatus, XMLHttpRequest){
	var response = jQuery.parseJSON(data);
	$("#delete" + response.release.id).closest("div").fadeOut();
}