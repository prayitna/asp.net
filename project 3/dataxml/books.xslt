<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="author">
    <xsl:value-of select="first-name"/>
    <xsl:value-of select="last-name"/>
    <xsl:if test="position()!=last()">, </xsl:if>
  </xsl:template>
  <xsl:template match="/">
    <HTML>
      <HEAD>
        <TITLE>BOOKS AT WEBSHOPPE</TITLE>
      </HEAD>
      <BODY>
        <H1>BOOKS AT WEBSHOPPE</H1>
        <TABLE BORDER="3" CELLSPACING="2" CELLPADDING="6">
          <THEAD ALIGN="CENTER" BGCOLOR="SILVER">
            <TH> Genre </TH>
            <TH> Title </TH>
            <TH> Author </TH>
            <TH> Price </TH>
          </THEAD>
          <TBODY>
            <xsl:for-each select="bookstore/book">
              <TR>
                <TD>
                  <font color="green">
                    <xsl:value-of select="@genre"/>
                  </font>
                </TD>
                <TD>
                  <xsl:value-of select="title"/>
                </TD>
                <TD>
                  <xsl:apply-templates select="author"/>
                </TD>
                <TD>
                  <xsl:value-of select="price"/>
                </TD>
              </TR>
            </xsl:for-each>
          </TBODY>
        </TABLE>
      </BODY>
    </HTML>
  </xsl:template>
</xsl:stylesheet>


