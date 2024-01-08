<?xml version="1.0" encoding="utf-8"?>
<!--
  This file is part of the DITA Bootstrap Toggle plug-in for DITA Open Toolkit.
  See the accompanying LICENSE file for applicable licenses.
-->
<xsl:stylesheet
  version="2.0"
  xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
  xmlns:xhtml="http://www.w3.org/1999/xhtml"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  exclude-result-prefixes="xs dita-ot"
>
  <!-- Import the standard net.infotexture.dita-bootstrap customizations -->
  <xsl:import href="plugin:net.infotexture.dita-bootstrap:xsl/html5-bootstrap.xsl"/>

  <xsl:include href="../Customization/xsl/carousel.xsl"/>
  <xsl:include href="../Customization/xsl/counter.xsl"/>
  <xsl:include href="../Customization/xsl/parallax.xsl"/>
  <xsl:include href="../Customization/xsl/slider.xsl"/>
  <xsl:include href="../Customization/xsl/to-top.xsl"/>
  <xsl:include href="../Customization/xsl/utility-classes.xsl"/>
  <xsl:include href="../Customization/xsl/whitebox.xsl"/>

  <xsl:template match="/ | @* | node()" mode="processHDF">
    <xsl:next-match/>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/@slackero/bootstrap-extension@v5.3.0/css/bootstrap-extension.min.css"
      integrity="sha384-cWw1Syvt1NPdm17M45E5edKocSclgqQr7nynYF6TFVU/LSl0BU2bf4/60dcY3OZ6"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/@slackero/bootstrap-extension@v5.3.0/js/bootstrap-extension.min.js"
      integrity="sha384-AAsz2PZALGWtXtXt/OrrAYuzoCGFDLugSJB6R8NfmQcD7avTsVVY5D4N0TGy7+vj"
      crossorigin="anonymous"
    />
    <style>.carousel-caption-readable {
    background-color: var(--carousel-caption-readable-BgColor);
    left: 1em;
    right: 1em;
    bottom: 1em;
    padding-bottom: 50px;
}</style>
  </xsl:template>
</xsl:stylesheet>
