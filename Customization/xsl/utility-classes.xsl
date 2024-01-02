<?xml version="1.0" encoding="UTF-8"?>
<!--
  This file is part of the DITA Bootstrap Extension plug-in for DITA Open Toolkit.
  See the accompanying LICENSE file for applicable licenses.
-->
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  version="2.0"
  exclude-result-prefixes="xs dita-ot"
>

  <xsl:param name="BOOTSTRAP_ICONS_INCLUDE" select="'yes'"/>
  <xsl:include href="plugin:net.infotexture.dita-bootstrap:Customization/xsl/utility-classes.xsl"/>

  <xsl:template match="/|node()|@*" mode="gen-user-bootstrap-class">
    <xsl:choose>
      <xsl:when test="contains(@outputclass, 'dividered-')">
        <xsl:text> dividered </xsl:text>
      </xsl:when>
		</xsl:choose>
	</xsl:template>

  <xsl:template match="*[contains(@outputclass, 'offset-border')]" mode="gen-user-bootstrap-attrs" priority="5">
    <xsl:if test="contains(@otherprops, 'data-border(')">
      <xsl:apply-templates select="." mode="otherprops-attributes"/>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>
