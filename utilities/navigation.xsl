<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="navigation" mode="global">
	<ul id="nav-global">
		<xsl:apply-templates select="page[types/type = 'global' and not(types/type = 'hidden') and not(types/type = 'admin')]"/>
	</ul>
</xsl:template>

<xsl:template match="navigation" mode="primary">
	<ul id="nav-primary">
		<xsl:apply-templates select="page[types/type = 'primary' and not(types/type = 'hidden') and not(types/type = 'admin')]"/>
	</ul>
</xsl:template>

<xsl:template match="navigation/page" mode="secondary">
	<ul id="nav-secondary">
		<xsl:apply-templates select="page[not(types/type = 'hidden') and not(types/type = 'admin')]" mode="secondary"/>
	</ul>
</xsl:template>

<xsl:template match="page">
	<xsl:variable name="link">
		<xsl:choose>
			<xsl:when test="types/type = 'index'">
				<xsl:value-of select="$root" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="concat($root, '/', @handle, '/')" />
			</xsl:otherwise>
		</xsl:choose>
	</xsl:variable>
	<li>
		<a href="{$link}">
			<xsl:if test="@handle = $root-page">
				<xsl:attribute name="class">selected</xsl:attribute>
			</xsl:if>
			<xsl:value-of select="name"/>
		</a>
	</li>
</xsl:template>

<xsl:template match="page" mode="secondary">
	<li>
		<a href="{concat($root, '/', ../@handle, '/', @handle, '/')}">
			<xsl:if test="@handle = $current-page">
				<xsl:attribute name="class">selected</xsl:attribute>
			</xsl:if>
			<xsl:value-of select="name"/>
		</a>
	</li>
</xsl:template>

</xsl:stylesheet>