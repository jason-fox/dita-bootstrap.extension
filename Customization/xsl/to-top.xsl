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

  <xsl:param name="TO_TOP_CONTROL" select="'yes'"/>

  <xsl:template match="/ | @* | node()" mode="gen-endnotes">
    <!-- Skip any footnotes that are in draft elements when draft = no -->
    <xsl:apply-templates
      select="//*[contains(@class, ' topic/fn ')][not( (ancestor::*[contains(@class, ' topic/draft-comment ')] or ancestor::*[contains(@class, ' topic/required-cleanup ')]) and $DRAFT = 'no')]"
      mode="genEndnote"
    />
  
    <xsl:if test="$TO_TOP_CONTROL = 'yes'">
      <div outputclass="d-none d-md-block">
        <div class="bg-primary text-white me-1 mb-1 p-3 rounded-circle" id="toTop"/>
      </div>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>
