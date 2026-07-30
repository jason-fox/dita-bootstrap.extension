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
  <xsl:template name="carousel-indicators-round">
    <xsl:param name="id"/>
    <ul class="carousel-indicators carousel-indicators-circle list-unstyled">
      <xsl:for-each select="*[contains(@class, ' topic/li ')]">
        <li>
          <xsl:attribute name="class">
            <xsl:if test="count(preceding-sibling::*[contains(@class, ' topic/li ')]) = 0">
              <xsl:text> active</xsl:text>
            </xsl:if>
          </xsl:attribute>
          <xsl:if test="count(preceding-sibling::*[contains(@class, ' topic/li ')]) = 0">
            <xsl:attribute name="aria-current" select="'true'"/>
          </xsl:if>
          <xsl:attribute name="data-bs-target" select="concat('#', $id)"/>
          <xsl:attribute name="data-bs-slide-to" select="count(preceding-sibling::*[contains(@class, ' topic/li ')])"/>
        </li>
      </xsl:for-each>
    </ul>
  </xsl:template>

  <xsl:template
    match="*[contains(@class, ' bootstrap-d/carousel ') or ((contains(@class,' topic/ul ') or contains(@class, ' topic/ol ')) and contains(@outputclass, 'carousel'))]"
  >
    <xsl:variable name="id">
      <xsl:value-of select="concat('carousel_' ,dita-ot:generate-html-id(.))"/>
    </xsl:variable>
    <div>
      <xsl:choose>
        <xsl:when test="contains(@otherprops, 'autoplay(false)')">
          <xsl:attribute name="data-bs-ride" select="'true'"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:attribute name="data-bs-ride" select="'carousel'"/>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:if test="contains(@otherprops, 'touch(false)')">
        <xsl:attribute name="data-bs-touch" select="'false'"/>
      </xsl:if>
      <xsl:attribute name="id" select="$id"/>
      <xsl:call-template name="commonattributes"/>
      <div class="carousel-inner pb-1">
        <xsl:apply-templates mode="carousel"/>
      </div>
      <div class="d-flex justify-content-between align-items-center">
        <xsl:call-template name="carousel-previous-next">
          <xsl:with-param name="id" select="$id"/>
        </xsl:call-template>
        <xsl:if test="contains(@otherprops, 'indicators(true)') or @indicators='true' or @indicators='yes'">
          <xsl:call-template name="carousel-indicators">
            <xsl:with-param name="id" select="$id"/>
          </xsl:call-template>
        </xsl:if>
        <xsl:if test="contains(@otherprops, 'indicators(round)') or @indicators='round'">
          <xsl:call-template name="carousel-indicators-round">
            <xsl:with-param name="id" select="$id"/>
          </xsl:call-template>
        </xsl:if>
      </div>
    </div>
  </xsl:template>

  <!-- Carousel Items Slides with Captions -->
  <xsl:template match="*[contains(@class,' topic/fig ')]" mode="carousel">
    <xsl:call-template name="topic.fig"/>
  </xsl:template>
</xsl:stylesheet>
