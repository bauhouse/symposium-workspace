<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="images">
	<xsl:apply-templates select="flickr-group-index/photos" />
</xsl:template>

<xsl:template match="flickr-group-index/photos">

	<section id="photos">
		<article>
			<header><h1>Photos</h1></header>
			<ul id="flickr-photos">
				<xsl:apply-templates select="photo" />
			</ul>
		</article>
	</section>
</xsl:template>

<xsl:template match="flickr-group-index/photos/photo">
	<li>
		<img src="http://farm{@farm}.static.flickr.com/{@server}/{@id}_{@secret}.jpg" />
	</li>
</xsl:template>

</xsl:stylesheet>