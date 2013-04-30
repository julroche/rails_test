$('.greeting').on('click', function() { 
	if ($('.greeting').html() == "Hey Gurl") {
		$('.greeting').html("Hey dude!");
	}  else  {
		$('.greeting').html("Hey Gurl");
	}
});