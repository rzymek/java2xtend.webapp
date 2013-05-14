function conv(textarea) {
	$('#xtend').html("Converting...");
	var java = textarea.value;
	$.post('c', java)
	.done(function(data) {
		$('#xtend').html(data);
	});
}
$('#java').bind('change', function() { conv(this) });

$('textarea').height($(window).height());