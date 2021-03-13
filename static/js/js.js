$(document).ready(function() {

	$(".notification .close").click(function () {
		$(this).parent('.notification').slideUp("slow");
  	});

	$(".notification-warning").each(function(){
		var message_warn = $(this).children('.message').html();
		$.alertable.alert(message_warn, { html: true });
	});

	$(".open-mobile-menu").click(function () {
			if($("body").hasClass("body-mobile-show-menu")) {
				$("body").removeClass("body-mobile-show-menu");
				$(".mobile-nav .hamburger").removeClass("is-active");

			} else {
				$("body").addClass("body-mobile-show-menu");
				$(".mobile-nav .hamburger").addClass("is-active");
			}
	});

	$("#mobile-fade-screen").click(function () {
			$("body").removeClass("body-mobile-show-menu");
			$(".mobile-nav .hamburger").removeClass("is-active");
	});

	// CONTACT PAGE
	$(".mask-input-phone").mask("(000) 0000 000");

	jQuery.validator.addMethod('reCaptchaMethod', function (value, element, param) {
		if (grecaptcha.getResponse() == ''){ return false; } else { return true }
	});

	$("#formContact_ro").validate({
		ignore: "",
		errorElement: 'span',
		rules: {
			contact_name: { required: true, minlength: 2 },
			contact_email: { required: { depends:function(){ $(this).val($.trim($(this).val())); return true; } }, email: true },
			contact_message: { required: true, minlength: 2 },
			contact_accept: "required",
			contact_captcha: { reCaptchaMethod: true }
		},
		messages: {
			contact_name: "Te rugăm să completezi acest câmp cu numele tău.",
			contact_email: "Te rugăm să completezi acest câmp cu adresa ta de e-mail.",
			contact_message: "Te rugăm să completezi acest câmp cu un mesaj.",
			contact_accept: "Nu ati acceptat termenii si conditiile site-ului.",
			contact_captcha: "Câmpul de captcha este incorect."
		}
	});

	$("#formContact_en").validate({
		ignore: "",
		errorElement: 'span',
		rules: {
			contact_name: { required: true, minlength: 2 },
			contact_email: { required: { depends:function(){ $(this).val($.trim($(this).val())); return true; } }, email: true },
			contact_message: { required: true, minlength: 2 },
			contact_accept: "required",
			contact_captcha: { reCaptchaMethod: true }
		},
		messages: {
			contact_name: "Please fill in your name.",
			contact_email: "Please fill in your e-mail address.",
			contact_message: "Please fill in a message.",
			contact_accept: "You have not accepted the terms and conditions of the site.",
			contact_captcha: "Please check the captcha field."
		}
	});

	// COOKIE CONSENT
	$(".consent-cookie-close").click(function(){
		$(".cookie-container").remove();
		date = new Date();
		date.setTime(date.getTime() + 120 * 24 * 1 * 60 * 60000); //120days
		document.cookie = "consentcookie=y; expires=" + date.toGMTString() + "; path=/";
	});

});

//fixed header
$(document).ready(function() {
	stickyHeader();
});

$(window).scroll(function () {
	stickyHeader();
});

$(window).resize(function() {
	stickyHeader();
});

function stickyHeader() {
	var scrollDistance = $(this).scrollTop();
	var distance = 0;

	//header scroll
	if($(".header-container").length > 0) { 
		if (scrollDistance > (50+distance)) {
			$("body").addClass("body-header-fixed");
		} else if (scrollDistance < (10+distance)) {
			$("body").removeClass("body-header-fixed");
		}
	}
}