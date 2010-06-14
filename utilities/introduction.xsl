<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="introduction">
	<section>
		<article>
			<xsl:apply-templates select="introduction/entry" />
	
			<div id="days">
				<xsl:apply-templates select="days/entry[day/item/@handle = 'saturday']" />

				<xsl:apply-templates select="days/entry[day/item/@handle = 'sunday']" />
			</div>
		</article>
	</section>
</xsl:template>

<xsl:template match="introduction/entry">
	<header><h1><xsl:value-of select="title" /></h1></header>
	<div id="intro">
		<xsl:copy-of select="body/*" />
	</div>
</xsl:template>

<xsl:template match="days/entry">
	<div id="{substring(day/item/@handle,0,4)}">
		<h3><xsl:value-of select="day/item" /></h3>
		
		<xsl:copy-of select="body/*" />
	</div>
</xsl:template>

</xsl:stylesheet>