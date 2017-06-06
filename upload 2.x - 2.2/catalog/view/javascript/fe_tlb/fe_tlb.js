$(function() {
	$(window).scroll(function(){
		var scrollTop = $(window).scrollTop();
		if(scrollTop != 0)
			$('#oc_fetlb').stop().animate({'opacity':'0.2'},400);
		else	
			$('#oc_fetlb').stop().animate({'opacity':'1'},400);
	});
	
	$('#oc_fetlb').hover(
		function (e) {
			var scrollTop = $(window).scrollTop();
			if(scrollTop != 0){
				$('#oc_fetlb').stop().animate({'opacity':'1'},400);
			}
		},
		function (e) {
			var scrollTop = $(window).scrollTop();
			if(scrollTop != 0){
				$('#oc_fetlb').stop().animate({'opacity':'0.2'},400);
			}
		}
	);
});