<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:default="http://www.w3.org/2005/Atom">

<xsl:template name="buzz">
	<ul>
		
		<xsl:apply-templates select="comments/entry | twitter-feed/default:entry">
			<xsl:sort select="date | default:published" order="descending" />
		</xsl:apply-templates>
	</ul>
</xsl:template>


<xsl:template match="comments/entry">
	<li>
		<span class="date"><xsl:value-of select="date" /></span>
		<span class="author"><xsl:value-of select="created-by" /></span>
		<div><xsl:value-of select="comment" /></div>
	</li>
</xsl:template>

<xsl:template match="twitter-feed/default:entry">
	<li>
		<span class="date"><xsl:value-of select="substring-before(default:published, 'T')" /></span>
		<span class="author"><xsl:value-of select="default:author/default:name" /></span>
		<div><xsl:value-of select="default:content" disable-output-escaping="yes"/></div>
	</li>
</xsl:template>
</xsl:stylesheet>