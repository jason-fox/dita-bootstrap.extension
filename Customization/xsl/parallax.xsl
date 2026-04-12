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
    match="*[contains(@class, ' bootstrap-ext-d/parallax ')] | *[contains(@class, ' topic/section ') and contains(@outputclass, 'parallax')]"
    name="topic.section"
  >
    <section>
      <xsl:call-template name="commonattributes"/>
      <xsl:call-template name="gen-toc-id"/>
      <xsl:call-template name="setidaname"/>
      <xsl:if test="@href">
        <xsl:attribute name="data-img-src" select="@href"/>
      </xsl:if>
      <xsl:if test="@speed">
        <xsl:attribute name="data-speed" select="@speed"/>
      </xsl:if>
      <xsl:apply-templates select="." mode="otherprops-attributes"/>
      <xsl:apply-templates select="*[contains(@class, ' ditaot-d/ditaval-startprop ')]" mode="out-of-line"/>
      <xsl:variable name="headLevel" select="dita2html:get-heading-level(.)"/>
      <xsl:choose>
        <xsl:when test="*[contains(@class, ' topic/title ')]">
          <xsl:for-each select="*[contains(@class, ' topic/title ')][1]">
            <xsl:element name="h{$headLevel}">
              <xsl:call-template name="commonattributes"/>
              <xsl:apply-templates/>
            </xsl:element>
          </xsl:for-each>
        </xsl:when>
        <xsl:when test="@spectitle">
          <xsl:element name="h{$headLevel}">
            <xsl:call-template name="commonattributes"/>
            <xsl:value-of select="@spectitle"/>
          </xsl:element>
        </xsl:when>
      </xsl:choose>
      <xsl:apply-templates
        select="*[not(contains(@class, ' topic/title '))] | text() | comment() | processing-instruction()"
      />
      <xsl:apply-templates select="*[contains(@class, ' ditaot-d/ditaval-endprop ')]" mode="out-of-line"/>
    </section>
  </xsl:template>
</xsl:stylesheet>
