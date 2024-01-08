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
  <xsl:template match="*[contains(@class, ' topic/ph ') and contains(@outputclass, 'counter')]">
    <span>
      <xsl:call-template name="commonattributes"/>
      <xsl:apply-templates select="." mode="otherprops-attributes"/>
      <xsl:apply-templates/>
    </span>
  </xsl:template>
</xsl:stylesheet>
