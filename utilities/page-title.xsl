<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:param name="entry"/>
<xsl:param name="produkt"/>
<xsl:param name="produktgruppe"/>

<xsl:template name="page-title">
	<xsl:if test="$current-path != '/'">
		<xsl:call-template name="page-title-page"/>
		<xsl:text> - </xsl:text>
	</xsl:if>
	<xsl:value-of select="$website-name"/>
	<xsl:if test="$current-path = '/'">
		<xsl:text> - acoustics meets perfection</xsl:text>
	</xsl:if>
</xsl:template>

<xsl:template name="page-title-page">
	<xsl:choose>
		<xsl:when test="$entry = not('')">
			<xsl:value-of select="//entry/titel[@handle = $entry]"/>
		</xsl:when>
		<xsl:when test="$produkt = not('')">
			<xsl:value-of select="//produkt/entry[name/@handle = $produkt]/marke/item"/>
			<xsl:text> </xsl:text>
			<xsl:value-of select="//produkt/entry/name[@handle = $produkt]"/>
		</xsl:when>
		<xsl:when test="$produktgruppe = not('')">
			<xsl:value-of select="//produktgruppe/entry/produktgruppe[@handle = $produktgruppe]"/>
		</xsl:when>
		<xsl:when test="$current-page = 'downloads' and $download-kategorie = not('')">
			<xsl:value-of select="//navigation-downloadkategorien/entry/kategorie[@handle = $download-kategorie]"/>
			<xsl:text> - </xsl:text>
			<xsl:value-of select="$page-title"/>
		</xsl:when>
		<xsl:when test="$current-page = 'haendler' and $marke = not('')">
			<xsl:value-of select="//marken/entry/marke[@handle = $marke]"/>
			<xsl:text> - </xsl:text>
			<xsl:value-of select="$page-title"/>
		</xsl:when>
		<xsl:otherwise>
			<xsl:value-of select="$page-title"/>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

</xsl:stylesheet>