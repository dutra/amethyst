
$(document).ready(function() {
    $(".item-hover").hover(function() {
	$(this).stop().fadeTo(500, 0.7);
    },function() {
	$(this).stop().fadeTo(500, 1);
    });
});
