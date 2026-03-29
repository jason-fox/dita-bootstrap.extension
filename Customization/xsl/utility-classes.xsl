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

  <xsl:template name="bootstrap-decoration">
    <xsl:if test="contains(@class, ' topic/table ')">
       <xsl:if test="@striped='yes'">
          <xsl:text>table-striped </xsl:text>
       </xsl:if>
       <xsl:if test="@striped-columns='yes'">
          <xsl:text>table-striped-columns </xsl:text>
       </xsl:if>
       <xsl:if test="@compact='yes'">
          <xsl:text>table-sm </xsl:text>
       </xsl:if>
    </xsl:if>
    <xsl:if test="contains(@class, ' topic/tbody ') or local-name() = 'tbody'">
       <xsl:if test="ancestor::*[contains(@class, ' topic/table ')][1]/@divider = 'yes'">
          <xsl:text>table-group-divider </xsl:text>
       </xsl:if>
    </xsl:if>
    <xsl:if test="@color">
       <xsl:choose>
          <xsl:when
          test="contains(@class, '/table ') or 
                          contains(@class, '/tbody ') or 
                          contains(@class, '/tfoot ') or 
                          contains(@class, '/row ') or 
                          contains(@class, '/entry ') or 
                          contains(@class, '/strow ') or 
                          contains(@class, '/stentry ') or 
                          contains(@class, '/thead ') or 
                          contains(@class, '/sthead ') or
                          local-name() = 'thead' or
                          local-name() = 'sthead' or
                          local-name() = 'tbody' or
                          local-name() = 'tfoot' or
                          local-name() = 'strow' or
                          local-name() = 'stentry'"
        >
             <xsl:text>table-</xsl:text>
             <xsl:value-of select="@color"/>
             <xsl:text> </xsl:text>
          </xsl:when>
          <xsl:when
          test="not(contains(@class, ' topic/note ') or 
                               contains(@class, ' topic/pre ') or 
                               contains(@class, ' bootstrap-d/card ') or 
                               contains(@class, ' bootstrap-d/alert ') or
                               contains(@class, ' bootstrap-d/badge ') or
                               contains(@class, ' bootstrap-d/list-group ') or
                               contains(@class, ' bootstrap-d/carousel ') or
                               contains(@class, ' bootstrap-d/button '))"
        >
             <xsl:text>text-bg-</xsl:text>
             <xsl:value-of select="@color"/>
             <xsl:text> </xsl:text>
          </xsl:when>
       </xsl:choose>
    </xsl:if>
    <xsl:if test="@border">
       <xsl:choose>
          <xsl:when test="@border='yes'">
             <xsl:text>border </xsl:text>
          </xsl:when>
          <xsl:when test="@border='no'">
             <xsl:text>border-0 </xsl:text>
          </xsl:when>
          <xsl:otherwise>
             <xsl:text>border border-</xsl:text>
             <xsl:value-of select="@border"/>
             <xsl:text> </xsl:text>
          </xsl:otherwise>
       </xsl:choose>
    </xsl:if>
    <xsl:if test="@rounded">
       <xsl:choose>
          <xsl:when test="@rounded='yes'">
             <xsl:text>rounded </xsl:text>
          </xsl:when>
          <xsl:when test="@rounded='no' or @rounded='0'">
             <xsl:text>rounded-0 </xsl:text>
          </xsl:when>
          <xsl:otherwise>
             <xsl:text>rounded-</xsl:text>
             <xsl:value-of select="@rounded"/>
             <xsl:text> </xsl:text>
          </xsl:otherwise>
       </xsl:choose>
    </xsl:if>
    <xsl:variable
      name="margin"
      select="normalize-space((@margin, (if (@shadow and @shadow != 'no' and @shadow != 'none' and not(contains(@outputclass, 'm-'))) then '3' else ()))[1])"
    />
    <xsl:if test="$margin != ''">
       <xsl:for-each select="tokenize($margin, ' ')">
          <xsl:variable name="property" select="substring(., 1, 1)"/>
          <xsl:variable name="remainder" select="substring(., 2)"/>
          <xsl:variable name="val">
             <xsl:choose>
                <xsl:when test="starts-with($remainder, '-')">
                   <xsl:text>n</xsl:text>
                   <xsl:value-of
                select="if (starts-with(substring($remainder, 2), 'n')) then substring($remainder, 3) else substring($remainder, 2)"
              />
                </xsl:when>
                <xsl:otherwise>
                   <xsl:value-of select="$remainder"/>
                </xsl:otherwise>
             </xsl:choose>
          </xsl:variable>
          <xsl:choose>
             <xsl:when test="$property = 't'">mt-<xsl:value-of select="$val"/></xsl:when>
             <xsl:when test="$property = 'b'">mb-<xsl:value-of select="$val"/></xsl:when>
             <xsl:when test="$property = 's'">ms-<xsl:value-of select="$val"/></xsl:when>
             <xsl:when test="$property = 'e'">me-<xsl:value-of select="$val"/></xsl:when>
             <xsl:when test="$property = 'x'">mx-<xsl:value-of select="$val"/></xsl:when>
             <xsl:when test="$property = 'y'">my-<xsl:value-of select="$val"/></xsl:when>
             <xsl:otherwise>m-<xsl:value-of select="."/></xsl:otherwise>
          </xsl:choose>
          <xsl:text> </xsl:text>
       </xsl:for-each>
    </xsl:if>
    <xsl:if
      test="@padding and not(contains(@class, ' topic/note ') or 
                                   contains(@class, ' topic/pre ') or 
                                   contains(@class, ' bootstrap-d/card ') or 
                                   contains(@class, ' bootstrap-d/alert '))"
    >
       <xsl:for-each select="tokenize(normalize-space(@padding), ' ')">
          <xsl:variable name="property" select="substring(., 1, 1)"/>
          <xsl:variable name="remainder" select="substring(., 2)"/>
          <xsl:variable
          name="val"
          select="if (starts-with($remainder, '-')) then substring($remainder, 2) else $remainder"
        />
          <xsl:choose>
             <xsl:when test="$property = 't'">pt-<xsl:value-of select="$val"/></xsl:when>
             <xsl:when test="$property = 'b'">pb-<xsl:value-of select="$val"/></xsl:when>
             <xsl:when test="$property = 's'">ps-<xsl:value-of select="$val"/></xsl:when>
             <xsl:when test="$property = 'e'">pe-<xsl:value-of select="$val"/></xsl:when>
             <xsl:when test="$property = 'x'">px-<xsl:value-of select="$val"/></xsl:when>
             <xsl:when test="$property = 'y'">py-<xsl:value-of select="$val"/></xsl:when>
             <xsl:otherwise>p-<xsl:value-of select="."/></xsl:otherwise>
          </xsl:choose>
          <xsl:text> </xsl:text>
       </xsl:for-each>
    </xsl:if>
    <xsl:if test="@shadow">
       <xsl:choose>
          <xsl:when test="@shadow='yes'">
             <xsl:text>shadow </xsl:text>
          </xsl:when>
          <xsl:when test="@shadow='no' or @shadow='none'">
             <xsl:text>shadow-none </xsl:text>
          </xsl:when>
          <xsl:otherwise>
             <xsl:text>shadow-</xsl:text>
             <xsl:value-of select="@shadow"/>
             <xsl:text> </xsl:text>
          </xsl:otherwise>
       </xsl:choose>
    </xsl:if>
    <xsl:if test="@width">
       <xsl:text>w-</xsl:text>
       <xsl:value-of select="@width"/>
       <xsl:text> </xsl:text>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>
