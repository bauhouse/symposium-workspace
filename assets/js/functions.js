var Symposium  = {
	bgImage : function(){
		$('#fs-background-holder').npFullBgImg(backgroundPath, {
			fadeInSpeed: 300, 
			center: true
		});
	}
}
$(function(){
	var bgDiv = $('<div id="fs-background-holder"/>').prependTo('body');
	Symposium.bgImage();
});