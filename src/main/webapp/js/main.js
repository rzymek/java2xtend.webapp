function conv(textarea) {
	$('#xtend').html("Converting...");
	var java = textarea.value;
	$.post('c', java)
	.done(function(data) {
		$('#xtend').html(data);
	})
	.fail(function(jsXHR, textStatus) {
		$('#xtend').html("An error occurred. Sorry. ("+textStatus+")");
	});
}
$('#java').bind('change', function() { conv(this) });

$('textarea').height($(window).height());