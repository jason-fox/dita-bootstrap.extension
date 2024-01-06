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
    match="*[ (contains(@class,' topic/ul ') or contains(@class, ' topic/ol ')) and contains(@outputclass, 'whitebox')]"
  >
    <xsl:variable name="id">
      <xsl:value-of select="concat('whitebox_' ,dita-ot:generate-html-id(.))"/>
    </xsl:variable>

    <div class="row">
       <div class="col-6 col-sm-4">
          <a class="wb-link">
            <xsl:attribute name="data-whitebox" select="concat('#', $id)"/>
            <xsl:attribute
            name="href"
            select="*[contains(@class,' topic/li ')][1]/*[contains(@class,' topic/image ')][1]/@href"
          />
            <xsl:attribute name="title" select="*[contains(@class,' topic/li ')][1]/*[contains(@class,' topic/image ')][1]/alt"/>

            <xsl:apply-templates select="*[contains(@class,' topic/li ')][1]/*[contains(@class,' topic/image ')]"/>
          </a>
      </div>
      <div class="visually-hidden">
        <xsl:for-each select="./*[contains(@class,' topic/li ')]">
          <xsl:if test="not(position() = 1)">
            <a class="wb-link">
              <xsl:attribute name="href" select="./*[contains(@class,' topic/image ')][1]/@href"/>
              <xsl:attribute name="title" select="./*[contains(@class,' topic/image ')][1]/alt"/>
              <xsl:attribute name="data-whitebox" select="concat('#', $id)"/>
              <xsl:apply-templates select="*[contains(@class,' topic/image ')]"/>
            </a>
          </xsl:if>
        </xsl:for-each>
      </div>
    </div>
  </xsl:template>

</xsl:stylesheet>
