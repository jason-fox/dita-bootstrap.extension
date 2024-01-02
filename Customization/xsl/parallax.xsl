<?xml version="1.0" encoding="UTF-8"?>
<!--
  This file is part of the DITA Bootstrap Extension plug-in for DITA Open Toolkit.
  See the accompanying LICENSE file for applicable licenses.
-->
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:dita2html="http://dita-ot.sourceforge.net/ns/200801/dita2html"
  version="2.0"
  exclude-result-prefixes="xs dita-ot dita2html"
>


  <xsl:template
    match="*[contains(@class, ' topic/section ') and contains(@outputclass, 'parallax')]"
    name="topic.section"
  >
    <section>
      <xsl:call-template name="commonattributes"/>
      <xsl:call-template name="gen-toc-id"/>
      <xsl:call-template name="setidaname"/>
      <xsl:apply-templates select="." mode="otherprops-attributes"/>
      <xsl:apply-templates select="*[contains(@class, ' ditaot-d/ditaval-startprop ')]" mode="out-of-line"/>
      <xsl:apply-templates select="." mode="dita2html:section-heading"/>
      <xsl:apply-templates
        select="*[not(contains(@class, ' topic/title '))] | text() | comment() | processing-instruction()"
      />
      <xsl:apply-templates select="*[contains(@class, ' ditaot-d/ditaval-endprop ')]" mode="out-of-line"/>
     
    </section>
  </xsl:template>

</xsl:stylesheet>
