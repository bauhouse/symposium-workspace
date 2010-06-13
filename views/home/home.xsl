<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="utilities/master.xsl"/>
<xsl:import href="utilities/images.xsl"/>
<xsl:import href="utilities/map.xsl" />
<xsl:import href="utilities/intro-buzz.xsl" />
<xsl:import href="utilities/attendees.xsl" />
<xsl:import href="utilities/xml-to-json.xsl" />

<xsl:template match="data">
	<div id="page">
		<header id="header">
			<div id="logo"><h1>Symposium<span>.</span>2010</h1></div>
			<nav>
				<ul>
					<li><a href="#">Introduction</a></li>
				</ul>
			</nav>
		</header>
		<xsl:call-template name="intro-buzz"/>
		<section>
			<header><h1>Presentations</h1></header>
			<article>
				<nav id="presenters">
					<ul>
						<li><a href="#" class="vcard">
							<img height="50" width="50" src="http://www.gravatar.com/avatar/ff533b1963301f6203dd28d52ae39487?s=50&amp;d=http%3A%2F%2Fsymphony-cms.com%2Fworkspace%2Fassets%2Fimages%2Ficons%2Fsymphony-avatar.png"/>
							<span class="username">Allen</span>
							<span class="full-name">Allen Chang</span>
							<span class="country">Australia</span>
						</a></li>
						<li><a href="#" class="vcard">
							<img height="50" width="50" src="http://www.gravatar.com/avatar/ff533b1963301f6203dd28d52ae39487?s=50&amp;d=http%3A%2F%2Fsymphony-cms.com%2Fworkspace%2Fassets%2Fimages%2Ficons%2Fsymphony-avatar.png"/>
							<span class="username">Allen</span>
							<span class="full-name">Allen Chang</span>
							<span class="country">Australia</span>
						</a></li>
						<li><a href="#" class="vcard">
							<img height="50" width="50" src="http://www.gravatar.com/avatar/ff533b1963301f6203dd28d52ae39487?s=50&amp;d=http%3A%2F%2Fsymphony-cms.com%2Fworkspace%2Fassets%2Fimages%2Ficons%2Fsymphony-avatar.png"/>
							<span class="username">Allen</span>
							<span class="full-name">Allen Chang</span>
							<span class="country">Australia</span>
						</a></li>
						<li><a href="#" class="vcard">
							<img height="50" width="50" src="http://www.gravatar.com/avatar/ff533b1963301f6203dd28d52ae39487?s=50&amp;d=http%3A%2F%2Fsymphony-cms.com%2Fworkspace%2Fassets%2Fimages%2Ficons%2Fsymphony-avatar.png"/>
							<span class="username">Allen</span>
							<span class="full-name">Allen Chang</span>
							<span class="country">Australia</span>
						</a></li>
					</ul>
				</nav>
				<div>
					<img src="#" alt="" height="" width=""/>
				</div>
				<div id="download">
					<a href="#">Download {handle}'s presentation</a>
				</div>
			</article>


			<xsl:call-template name="map"/>
			<xsl:call-template name="images"/>
			<xsl:call-template name="attendees"/>

		</section>
		<footer>

		</footer>

		<script src="http://www.google.com/jsapi?key=ABQIAAAAW6Apo4FW5VYfLZC0TOi4sRQmQlgb2dAVZwp9xqCwzdBoJivZ1BT-Tz9Ie6XQpaiQ4MYsyKvqCDi_XA"></script>
		<script> 	
		google.load("maps", "2");
		google.load("jquery", "1.4.2");
		</script>
		<script src="workspace/assets/js/jquery.npFullBgImg.js"></script>
		<script src="workspace/assets/js/functions.js"></script>
		<script>
		//simple static single image load demo

		//background image loading functions, loads first image on page load
		var backgroundPath = "workspace/assets/img/4693184605_8063a3486c_b.jpg";


		//selectivly load images, based on some action
		/**$('#testLink').click(function () {
		$('#imgContainer').npFullBgImg("workspace/assets/img/home2.jpg", {fadeInSpeed: 2000});
		});*/	</script>
	</div>


</xsl:template>

</xsl:stylesheet>