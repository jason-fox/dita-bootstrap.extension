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

  <xsl:template match="/|node()|@*" mode="gen-user-bootstrap-class">
    <xsl:if test="@indicators='round'">
      <xsl:text> carousel-indicators-round </xsl:text>
    </xsl:if>
    <xsl:if test="contains(@outputclass, 'dividered-')">
      <xsl:text> dividered </xsl:text>
    </xsl:if>
    <xsl:if test="contains(@class, ' topic/image ') and ancestor::*[contains(@outputclass, 'whitebox')]">
      <xsl:text> w-100 </xsl:text>
    </xsl:if>
  </xsl:template>

  <xsl:template match="*[contains(@outputclass, 'offset-border')]" mode="gen-user-bootstrap-attrs">
    <xsl:if test="contains(@otherprops, 'data-border(')">
      <xsl:apply-templates select="." mode="otherprops-attributes"/>
    </xsl:if>
  </xsl:template>

  <!-- Process image-specific decorations (monochromatic, grayscale, zoom, onhover) on any element -->
  <xsl:template name="bootstrap-image-decoration">
    <xsl:if test="@grayscale = 'yes'">grayscale </xsl:if>
    <xsl:if test="@grayscale = 'no'">grayscale-0 </xsl:if>
    <xsl:choose>
      <xsl:when test="@zoom = 'yes' or @zoom = 'md'">hover-zoom </xsl:when>
      <xsl:when test="@zoom = 'sm' or @zoom = 'lg'">
        <xsl:text>hover-zoom-</xsl:text>
        <xsl:value-of select="@zoom"/>
        <xsl:text> </xsl:text>
      </xsl:when>
    </xsl:choose>
    <xsl:if test="@onhover = 'color'">hover-color </xsl:if>
    <xsl:if test="@onhover = 'grayscale'">hover-grayscale </xsl:if>
    <xsl:if test="@monochromatic">
      <xsl:text>monochromatic-</xsl:text>
      <xsl:value-of select="@monochromatic"/>
      <xsl:text> </xsl:text>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>
