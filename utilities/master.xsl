<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="page-title.xsl" />
<xsl:import href="header.xsl" />
<xsl:import href="footer.xsl" />

<xsl:output method="html"
	media-type="text/html"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes"/>
	
<xsl:template match="/">

    <xsl:text disable-output-escaping="yes">&lt;</xsl:text>!DOCTYPE html<xsl:text disable-output-escaping="yes">&gt;</xsl:text>

<html lang="en" class="no-js">
	<head>
		<title>
			<xsl:call-template name="page-title"/>
		</title>
	    <link rel="icon" type="image/png" href="{$root}/workspace/assets/img/bookmark.png" />

		<!-- <link rel="stylesheet" type="text/css" href="{$root}/workspace/assets/css/screen.css" charset="utf-8"/> -->
		<link rel="stylesheet" type="text/css" media="handheld, screen" href="{$root}/workspace/assets/css/base.css" />
		<link rel="stylesheet" type="text/css" media="screen and (min-width: 601px)" href="{$root}/workspace/assets/css/sections.css" />
		<link rel="stylesheet" type="text/css" media="screen and (min-width: 601px) and (max-width: 960px)" href="{$root}/workspace/assets/css/sections-fluid.css" />
		<link rel="stylesheet" type="text/css" media="screen, handheld" href="{$root}/workspace/assets/css/screen.css" />
		<xsl:comment><![CDATA[[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]]]></xsl:comment>
		<script>document.documentElement.className='js';</script>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
		<!-- <script type="text/javascript" src="{$root}/workspace/assets/js/jquery.colorbox-min.js"></script> -->
		<script type="text/javascript" src="http://maps.google.com/maps?file=api&amp;v=2&amp;key=ABQIAAAAkI6tEGaQhOIM8xxHk1nwzRTr0bSIo1BMsraTyib68Up41_TrBhSVQA0aXkL9yEQMbYrj6D1olIYg9w"></script>
		<script src="{$root}/workspace/assets/js/mapiconmaker.js" type="text/javascript"></script>
		<script src="{$root}/workspace/assets/js/markermanager.js" type="text/javascript"></script>
		<script src="{$root}/workspace/assets/js/jquery.metadata.js" type="text/javascript"></script>
		<script src="{$root}/workspace/assets/js/jquery.jmapping.min.js" type="text/javascript"></script>
		<script src="{$root}/workspace/assets/js/map.js" type="text/javascript"></script>
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
		<xsl:apply-templates select="data" mode="assets"/>
	</head>
	<body>
		<xsl:apply-templates/>
	</body>
</html>

</xsl:template>

<xsl:template name="page-title">
	<xsl:value-of select="$website-name"/>
</xsl:template>

<xsl:template match="data" mode="assets"/>

</xsl:stylesheet>