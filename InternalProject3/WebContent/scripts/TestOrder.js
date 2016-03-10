/**
 * 
 */
(function() {
	var count = document.getElementById("count").value;
	console.log(count);

})();

$(document).ready(function() {
	var count = $("#count").val();
	console.log(count);

	for (i = 0; i < count; i++) {
		console.log( request.getParameter("ajax_test"+i));
		$("#testList")
			.append("<tr><td><label>"
				+document.getElementById("ajax_test"+i)
				+"</label></td></tr>"
					
			
			
			);
	}

});