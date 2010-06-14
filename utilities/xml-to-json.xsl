<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:exsl="http://exslt.org/common"
	extension-element-prefixes="exsl">

<xsl:import href="string-replace.xsl" /> 

<xsl:strip-space elements="*"/> 

<!--
Example call

	<xsl:call-template name="json">
		<xsl:with-param name="xml">
			[Any XSLT-transformation]
		</xsl:with-param>
	</xsl:call-template>
-->

	<xsl:template name="json">
		<xsl:param name="xml" />
		{<xsl:apply-templates select="exsl:node-set($xml)" mode="json" />}
	</xsl:template>

	<xsl:template match="*" mode="json">
		<xsl:variable name="has-siblings" select="name(.) = name(preceding-sibling::*) or name(.) = name(following-sibling::*)" />
		<xsl:variable name="has-children" select="child::*" />
		<xsl:variable name="is-node" select="$has-siblings and position() = 1 or not($has-siblings)" />

		<xsl:if test="$is-node">"<xsl:value-of select="name(.)" />": </xsl:if>	<!-- Name -->
		<xsl:if test="$has-siblings and position() = 1">[</xsl:if> 		<!-- Array -->
		<xsl:if test="$has-children">{</xsl:if>					<!-- Object -->
		<xsl:apply-templates select="* | text()" mode="json"/> 			<!-- Recursion -->
		<xsl:if test=". = ''">null</xsl:if> 					<!-- Empty Element -->
		<xsl:if test="$has-children">}</xsl:if>					<!-- /Object -->
		<xsl:if test="$has-siblings and position() = last()">]</xsl:if> 	<!-- /Array -->
		<xsl:if test="position() != last()">,</xsl:if>				<!-- Separator -->
	</xsl:template>

	<xsl:template match="text()" mode="json">
		<xsl:variable name="is-string" select="string(number(.)) = 'NaN' and . != 'true' and . != 'false'" />

		<xsl:if test="$is-string">"</xsl:if>
		<xsl:call-template name="string-replace">				<!-- Escape Quotes -->
			<xsl:with-param name="haystack" select="." />
			<xsl:with-param name="search" select="'&#34;'" />
			<xsl:with-param name="replace" select="'&#92;&#34;'" />
		</xsl:call-template>
		<xsl:if test="$is-string">"</xsl:if>
	</xsl:template>

</xsl:stylesheet>