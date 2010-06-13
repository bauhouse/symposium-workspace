<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="page-title.xsl" />
<xsl:import href="header.xsl" />
<xsl:import href="footer.xsl" />

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />

<xsl:template match="/">

<html xml:lang="en" lang="en">
	<head>
		<meta http-equiv="imagetoolbar" content="false"/>
		<title>
			<xsl:call-template name="page-title"/>
		</title>
		<!-- <link rel="shortcut icon" type="image/x-icon" href="{$root}/favicon.ico"/> -->
		<!-- <link rel="stylesheet" type="text/css" href="{$root}/workspace/assets/css/960.gs/reset.css?t={$utime}"/> -->
		<!-- <link rel="stylesheet" type="text/css" href="{$root}/workspace/assets/css/960.gs/text.css?t={$utime}"/> -->
		<!-- <link rel="stylesheet" type="text/css" href="{$root}/workspace/assets/css/960.gs/960.css?t={$utime}"/> -->
		<link rel="stylesheet" type="text/css" href="{$root}/workspace/assets/css/screen.css" charset="utf-8"/>
		<link rel="stylesheet" type="text/css" media="screen" href="{$root}/workspace/assets/jquery.lightbox/css/jquery.lightbox-0.5.css" />
		<xsl:comment><![CDATA[[if IE 6]><link rel="stylesheet" type="text/css" href="]]><xsl:value-of select="$root"/><![CDATA[/workspace/assets/css/ie6patches.css" /><![endif]]]></xsl:comment>
		<xsl:comment><![CDATA[[if IE 7]><link rel="stylesheet" type="text/css" href="]]><xsl:value-of select="$root"/><![CDATA[/workspace/assets/css/ie7patches.css" /><![endif]]]></xsl:comment>
		<script type="text/javascript" src="{$root}/workspace/assets/jquery/jquery-1.4.2.min.js"></script>
		<!-- <script type="text/javascript" src="{$root}/workspace/assets/jquery.lightbox/js/jquery.lightbox-0.5.min.js"></script> -->
		<script type="text/javascript" src="{$root}/workspace/assets/js/global.js"></script>
		<xsl:apply-templates select="data" mode="assets"/>
	</head>
	<body id="top">
		<div id="header">
			<xsl:call-template name="header"/>
		</div>
		<div id="content">
			<xsl:apply-templates />
		</div>
		<div id="footer">
			<xsl:call-template name="footer"/>
		</div>
		<script type="text/javascript">Cufon.now();</script>
	</body>
</html>

</xsl:template>

<xsl:template match="data" mode="assets"/>

</xsl:stylesheet>