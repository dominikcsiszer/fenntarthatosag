function teszt() {
	var dataString='username=Domi';
	
	$.ajax({
		type:"post",
		url: "?page=ajax&function=teszt",
		data:dataString,
		cache:false,
		success: function(html) {
			$('#ajax').html(html);
		}
	});
	return false;
}