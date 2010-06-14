<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="buzz.xsl"/>
<xsl:import href="introduction.xsl"/>

<xsl:template name="intro-buzz">

	<xsl:call-template name="introduction"/>
	<xsl:call-template name="buzz"/>

</xsl:template>

</xsl:stylesheet>