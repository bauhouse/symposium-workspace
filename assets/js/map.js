$(document).ready(function(){
	
	$('#map').jMapping({
		category_icon_options: {
			'venue': {primaryColor: '#b40b51'},
			'team': {primaryColor: '#423a3a'},
			'default': {primaryColor: '#216778'}
		},
		map_config: function(map){
			var london = new GLatLng(51.500152, -0.126236);
			map.setCenter(london);
			map.addControl(new GSmallZoomControl3D());
			
			$('.map-location').each(function(index) {
				var polyline = new GPolyline([
					new GLatLng($(this).metadata().point.lat, $(this).metadata().point.lng),
					london
					], "#b40b51", 10, 0.25, {geodesic: true});
				map.addOverlay(polyline);
			});
		}
	});
	
	var $map_links = $('.map-location > a'),
		time = 5000,
		timeout,
		show_bubble = function(index){
		$($map_links.get(index)).trigger('click');
		timeout = setTimeout(function() {
			show_bubble((index + 1)%$map_links.length);
		}, time);
	};
	timeout = setTimeout(function() {
		show_bubble(0);
	}, time);
	
	$map_links.click(function() {
		if (timeout) clearTimeout(timeout);
	});
});