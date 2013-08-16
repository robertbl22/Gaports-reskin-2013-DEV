jQuery(document).ready(function () {

    function HoverOver() {
        jQuery(this).addClass('hover');
    }

    function HoverOut() {
        jQuery(this).removeClass('hover');
    }

    function MouseDown() {
        jQuery(this).addClass('active');
    }

    function MouseUp() {
        jQuery(this).removeClass('active');
    }
	
	jQuery("#DDRMenu_TopStatic .topLevel > li").hover(HoverOver, HoverOut);
	jQuery("#DDRMenu_TopStatic .topLevel > li").mousedown(MouseDown);
	jQuery("#DDRMenu_TopStatic .topLevel > li").mouseup(MouseUp);

});