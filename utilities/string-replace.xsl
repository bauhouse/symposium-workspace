<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!--
Example call

	<xsl:call-template name="string-replace">
		<xsl:with-param name="haystack" select="item" />
		<xsl:with-param name="search" select="'ab'" />
		<xsl:with-param name="replace" select="'zz'" />
	</xsl:call-template>
-->

<xsl:template name="string-replace">
	<xsl:param name="haystack" />
	<xsl:param name="search" />
	<xsl:param name="replace" select="''" />
	
	<xsl:choose>
		<xsl:when test="contains($haystack, $search)">
			<xsl:value-of select="substring-before($haystack, $search)" />
			<xsl:value-of select="$replace" />
			<xsl:call-template name="string-replace">
				<xsl:with-param name="haystack" select="substring-after($haystack, $search)" />
				<xsl:with-param name="search" select="$search" />
				<xsl:with-param name="replace" select="$replace" />
			</xsl:call-template>
		</xsl:when>
		<xsl:otherwise>
			<xsl:value-of select="$haystack" />
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

</xsl:stylesheet>