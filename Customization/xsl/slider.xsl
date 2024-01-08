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
  <xsl:template match="*[contains(@class,' topic/bodydiv ') and contains(@outputclass, 'slider')]">
    <div>
      <xsl:call-template name="commonattributes"/>
      <xsl:call-template name="setid"/>
      <div class="scroll">
        <xsl:apply-templates mode="slider"/>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="*[contains(@class,' topic/section ')]" mode="slider">
    <div class="slider-item">
      <xsl:apply-templates select="."/>
    </div>
  </xsl:template>
</xsl:stylesheet>
