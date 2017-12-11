
function doAjaxGet() {
		var sessionId = $('#sessionId').val();
		if(sessionId == 0){
			$('#titleId').html("Fuel Filling");
			$('#divFuelFilling').html('');
		}else{
			$('#titleId').html("Fuel Filling - "+sessionId);
			$.ajax({
				type : "GET",
				url : "fuelFilling" + sessionId,
				success : function(response) {
					// we have the response
					$('#divFuelFilling').html(response);
				},
				error : function(e) {
					alert('Error: ' + e);
				}
			});
		}
		
	}
