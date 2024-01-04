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

  <xsl:param name="BOOTSTRAP_TO_TOP_INCLUDE" select="'no'"/>
  <xsl:param name="BOOTSTRAP_CSS_TO_TOP" select="'bg-primary text-white me-1 mb-1 p-3 rounded-circle'"/>

  <xsl:template match="/ | @* | node()" mode="gen-endnotes">
    <!-- Skip any footnotes that are in draft elements when draft = no -->
    <xsl:apply-templates
      select="//*[contains(@class, ' topic/fn ')][not( (ancestor::*[contains(@class, ' topic/draft-comment ')] or ancestor::*[contains(@class, ' topic/required-cleanup ')]) and $DRAFT = 'no')]"
      mode="genEndnote"
    />
  
    <xsl:if test="$BOOTSTRAP_TO_TOP_INCLUDE = 'yes'">
      <div outputclass="d-none d-md-block">
        <div id="toTop">
          <xsl:attribute name="class" select="$BOOTSTRAP_CSS_TO_TOP"/>
        </div>
      </div>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>
