function conv() {
	$('#xtend').html("Converting...");
	var java = $('#java').val();
	$.post('c', java).done(function(data) {
		$('#xtend').html(data);
	}).fail(function(jsXHR, textStatus) {
		$('#xtend').html("An error occurred. Sorry. (" + textStatus + ")");
	});
}

$('#java').bind('change', function() {
	conv()
});

function onresize() {
	$('textarea').height($(window).height());
}
	
