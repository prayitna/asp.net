<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:template match="catalog">
    <catalog>
      <xsl:apply-templates></xsl:apply-templates>
    </catalog>
  </xsl:template>


  <xsl:template match="cd">
    <unit>
      <xsl:for-each select="*">
        
        <xsl:attribute name="{name()}">
          <xsl:value-of select="text()"/>
        </xsl:attribute>
        
      </xsl:for-each>
    </unit>
  </xsl:template>

</xsl:stylesheet>
