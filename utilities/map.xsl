<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="map">
	<div id="map" style="width: 600px; height: 400px;"></div>
	<div id="map-side-bar">
		<div class="map-location">
			<xsl:attribute name="data">
				<xsl:text>{id: 1, point: {lat: 51.500152, lng: -0.126236}, category: 'venue'}</xsl:text>
			</xsl:attribute>
			<a href="#" class="map-link">London</a>
			<div class="info-box">
				<p>The venue.</p>
			</div>
		</div>
		<xsl:apply-templates select="attendees-index/entry"/>
	</div>
</xsl:template>

<xsl:template match="attendees-index/entry">
	<div class="map-location">
		<xsl:attribute name="data">
			<xsl:text>{</xsl:text>
			<xsl:value-of select="concat('id: ', @id,', ')"/>
			<xsl:value-of select="concat('point: {lat: ', substring-before(location/@handle,'-'), 'lng: ', substring-after(location/@handle,'-'),'}')"/>
			<xsl:if test="(symphony-username/handle = 'czheng') or (symphony-username/handle = 'Allen')">
				<xsl:text>, category: 'team'</xsl:text>
			</xsl:if>
			<xsl:text>}</xsl:text>
		</xsl:attribute>
		<a href="#" class="map-link"><xsl:value-of select="name"/></a>
		<div class="info-box">
			<p><xsl:value-of select="location-name"/></p>
			<p><a href="http://symphony-cms.com/get-involved/member/{symphony-username/@handle}/"><xsl:value-of select="name"/></a></p>
		</div>
	</div>
</xsl:template>

</xsl:stylesheet>