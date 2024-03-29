<?xml version="1.0" encoding="utf-8"?>
<!--
  This file is part of the DITA Bootstrap Extension plug-in for DITA Open Toolkit.
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
      href="https://cdn.jsdelivr.net/gh/bootstrapextension/bootstrap-extension@5.3.1/css/bootstrap-extension.min.css"
      integrity="sha384-vNt3O8wn/Wzz+qsUDG0Fnc/KlQdEWEp4wOgd21TnEvVPLUZK+O5zmqqi4nOVPYGi"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/gh/bootstrapextension/bootstrap-extension@5.3.1/js/bootstrap-extension.min.js"
      integrity="sha384-ICWN/2Xrjp5UR1cWsIRT6GQLT64yibecz633fMwJaFzPeJMdp/z1BxIrOj4MQUhE"
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
