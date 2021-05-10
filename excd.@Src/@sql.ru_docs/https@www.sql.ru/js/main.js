$(document).ready(function(){
/*	$('.gallery-main').flexslider({
		animation: "slide",
		slideshow: true,
		directionNav: true,
		slideshowSpeed: 5000
	});
    $('.gallery-small').flexslider({
        animation: "fade",
        slideshow: true,
        directionNav: true,
        slideshowSpeed: 5000
    });*/
	$(".enter").click(function() {
        if($(".box-login").css('display') == 'none') {
        	$(".box-login").addClass("active");
            $(".box-login").fadeIn('slow');
        }
        else {
            $(".box-login").fadeOut('hide');
            $(".box-login").removeClass("active");
        }
        return false;
    });
    $('.form-search-top .txt-input').focus(function() {
        $(".form-search-top").animate({width:'172px'}, 200);
        $(".form-search-top .txt-input").animate({width:'128px'}, 200);
    });
    $('.form-search-top .txt-input').blur(function() {
        $(".form-search-top").animate({width:'132px'}, 200);
        $(".form-search-top .txt-input").animate({width:'88px'}, 200);
    });
    $('.form-search-bottom .txt-input').focus(function() {
        $(".form-search-bottom").animate({width:'172px'}, 200);
        $(".form-search-bottom .txt-input").animate({width:'128px'}, 200);
    });
    $('.form-search-bottom .txt-input').blur(function() {
        $(".form-search-bottom").animate({width:'132px'}, 200);
        $(".form-search-bottom .txt-input").animate({width:'88px'}, 200);
    });
});
$(document).click(function(event) {
    if($(event.target).hasClass('active')) return;
    if($(event.target).parents().hasClass('active')) return;
    $('.box-login').fadeOut('hide');
});
 $(window).bind("load", function () {
    var footer = $("#footer-container");
    var pos = footer.position();
    var height = $(window).height();
    height = height - pos.top;
    height = height - footer.height();
    if (height > 0) {
        footer.css({
            'margin-top': height + 'px'
        });
    }
});