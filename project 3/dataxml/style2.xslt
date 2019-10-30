<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="tr_unit">
    
    <HTML>
      <HEAD>
        <TITLE>Unit at Corporate</TITLE>
      </HEAD>
      <BODY>
        <H1>Unit at Corporate</H1>
        <TABLE BORDER="3" CELLSPACING="2" CELLPADDING="6">
          <THEAD ALIGN="CENTER" BGCOLOR="SILVER">
            <TH> Unit ID </TH>
            <TH> Unit Name </TH>
          </THEAD>
          <TBODY>
            <xsl:for-each select="unit">
              <xsl:sort select="unit_name" order="descending"/>
              <TR>
                <TD>
                  <font color="green">
                    <xsl:value-of select="unit_id"/>
                  </font>
                </TD>
                <TD>
                  <xsl:value-of select="unit_name"/>
                </TD>

              </TR>
            </xsl:for-each>
          </TBODY>
        </TABLE>
      </BODY>
    </HTML>
  </xsl:template>
</xsl:stylesheet>

