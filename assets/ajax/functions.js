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

function nextQuiz() {
	var a1 = document.getElementById('a1').value;
	var a1 = document.getElementById('a2').value;
	var a1 = document.getElementById('a3').value;
	var a1 = document.getElementById('a4').value;
	var dataString='a1='+a1 + '&a2='+a2 + '&a3='+a3 + '&a4='+a4;
	
	$.ajax({
		type:"post",
		url: "?page=ajax&function=nextQuiz",
		data:dataString,
		cache:false,
		success: function(html) {
			$('#ajax').html(html);
		}
	});
	return false;
}