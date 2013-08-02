jQuery(document).ready(function () {

	//Test to see if required css pseudo-class supported
	var hasPseudoClasses = Modernizr.generatedcontent;

	// "auto" turns the slideshow on/off
	$(".rslides").responsiveSlides({
		speed: 2000,
		timeout: 10000,
		maxwidth: 1920,
		auto: hasPseudoClasses
	});

});