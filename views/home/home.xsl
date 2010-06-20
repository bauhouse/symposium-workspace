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
		</section>
		<xsl:call-template name="map"/>
		<xsl:call-template name="images"/>
		<xsl:call-template name="attendees"/>

		<footer>

		</footer>

	</div>


</xsl:template>

</xsl:stylesheet>