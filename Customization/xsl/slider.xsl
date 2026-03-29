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
  <xsl:template
    match="*[contains(@class,' bootstrap-ext-d/slider ')] | *[contains(@class,' topic/bodydiv ') and contains(@outputclass, 'slider')]"
  >
    <div>
      <xsl:call-template name="commonattributes"/>
      <xsl:call-template name="setid"/>
      <div class="scroll">
        <xsl:apply-templates mode="slider"/>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="*[contains(@class, ' topic/section ')]" mode="slider">
    <div class="slider-item">
      <xsl:apply-templates select="."/>
    </div>
  </xsl:template>

  <xsl:template
    match="*[contains(@class, ' bootstrap-d/card ') or (contains(@class,' topic/section ') and contains(@outputclass, 'card'))]"
    mode="get-output-class"
    priority="10"
  >
    <xsl:variable
      name="inside-slider"
      select="parent::*[contains(@class, ' bootstrap-ext-d/slider ') or (contains(@class, ' topic/bodydiv ') and contains(@outputclass, 'slider'))]"
    />
    <xsl:variable name="classes">
      <xsl:next-match/>
    </xsl:variable>
    <xsl:choose>
      <xsl:when test="exists($inside-slider)">
        <xsl:value-of select="normalize-space(replace($classes, 'w-50', ''))"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$classes"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
