$("#typeAnimal").change(function() {
		$('#food').text($('option:selected').attr('data-content'));
		$('#foodOne').text($('option:selected').attr('data-example'));
	}).change();

$("#typeAnimal").change(function(){

	if ($('#typeAnimal option:selected').text() ==="Horse") {
		
	        $('#bajs').show();
	    }
	    else {
	        $('#bajs').hide();
	    }
	}).change();

