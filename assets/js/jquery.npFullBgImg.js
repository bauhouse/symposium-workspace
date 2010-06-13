/* JS
* Copyright 2009 noponies.
* Version 0.1 Beta - Intial Release to the wild - comments, yes please!
*/
(function($){

	var img_prop;
	var imageArray = [];
	var defaults = {};
	var firstLoad = true;
	
	$.fn.extend({ 
		npFullBgImg: function(imgPath, options) {
			defaults = {
				 fadeInSpeed: 1000,
   				 center: false
			};
			
			var opts = $.extend(defaults, options);
			var targetContainer = $(this); 
			//create image
			var img  = new Image();
			//add to array
 	 		imageArray.unshift(img);
 	 		
 	 		if(firstLoad === true) {
 	 			$(targetContainer).fadeTo(10, 0)
 	 		}
			
	        $(img).load(function () {
	        	//this is a hack to stop a flash of the image sometimes
  				$(img).fadeOut(10, 0);
	         	$(img).css({display: 'none', left:0, top: 0, position: 'absolute', 'z-index': -100});
	            //add image to container
	            $(targetContainer).append(img);
	            //resize image
				resizeImg($(window).width(), $(window).height(), $(img).width(), $(img).height());
				
				if(firstLoad === true) {
 	 				$(targetContainer).fadeTo(10, 1)
 	 				firstLoad = false;
 	 			}
					            
	            $(img).fadeIn(defaults.fadeInSpeed, function () {
		            if(imageArray.length > 1) {
		            	imageArray.pop();
		            	$(targetContainer).children().eq(0).remove();   	
		            }
		            
		          	if( typeof opts.callback == 'function' ){
						opts.callback.call(this, targetContainer, options);
					}

	            });
	        }).error(function () {
	            // got an error
	            alert('image not loaded');
	        }).attr('src', imgPath + '?random=' + (new Date()).getTime());
	    	}
		});
	
	$(window).bind("resize", function(){
			resizeImg($(window).width(), $(window).height(), $(imageArray[0]).width(), $(imageArray[0]).height());		  			
	});

  	function resizeImg(sw, sh, imgw, imgh, targetContainer){
			if ((sh / sw) > (imgh / imgw)) {
					img_prop = imgw/imgh;
					destHeight = sh;
					destWidth = sh * img_prop;
				} else {
					img_prop = imgh/imgw;
					destWidth = sw;
					destHeight = sw * img_prop;
				}

			$(imageArray[0]).attr({
				width: destWidth,
				height: destHeight
			});
			
			if(defaults.center) {
				var xVal = sw * .5 - $(imageArray[0]).width() * .5;
				var yVal = sh * .5 - $(imageArray[0]).height() * .5;
				$(imageArray[0]).css({left:xVal, top: yVal});
			}
	}

	
})(jQuery);

