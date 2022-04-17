<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="utf-8"/>
                <title>MENU</title>
            </head>
            <body>
                <h1 align="center">BURGERS</h1>
                <h2>BURGER</h2>
                
                <table style="width:100%;" border="1">
                    <tr>
                        <th>Typ burgeru</th>
                        <th>Nazev</th>
                        <th>Omacka</th>
                        <th>Cas na pripravu</th>
                        <th>Cena</th>
                    </tr>
                    <xsl:for-each select="/BURGERS/MENU/BURGER">
                        <xsl:sort select="type"/>
                        <tr>
                            <td><xsl:value-of select="TYPE"/> </td>
                            <td><xsl:value-of select="NAME"/></td>
                            <td><xsl:value-of select="SAUCE"/></td>
                            <td><xsl:value-of select="TIMECOOKING"/></td>
                            <td><xsl:value-of select="PRICE"/></td>
                            
                        </tr>
                    </xsl:for-each>

                </table>
                <h3>Seznam podle ceny</h3>
                <table style="width:50%;" border="1">
                    <tr>
                        <th>Nazev</th>
                        <th>Typ burgeru</th>
                        <th>Cena</th>
                        
                    </tr>
                    <xsl:for-each select="/BURGERS/MENU/BURGER">
                        <xsl:sort select="PRICE"/>
                        <tr>
                            <td><xsl:value-of select="NAME"/> </td>
                            <td><xsl:value-of select="TYPE"/></td>
                            <td><xsl:value-of select="PRICE"/></td>
                            
                        </tr>
                    </xsl:for-each>
                </table>
                <h3>Seznam podle casu na pripravu</h3>
                <table style="width:50%;" border="1">
                    <tr>
                        <th>Nazev</th>
                        <th>Typ burgeru</th>
                        <th>Cas na pripravu<th>
                    </tr>
                    <xsl:for-each select="/BURGERS/MENU/BURGER">
                        <xsl:sort select="TIMECOOKING"/>
                        <xsl:choose>
                            <xsl:when test="TIMECOOKING <= 90">
                                <tr>
                                    <td><xsl:value-of select="NAME"/> </td>
                                    <td><xsl:value-of select="TYPE"/></td>
                                    <td><xsl:value-of select="TIMECOOKING"/></td>
                                </tr>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </table>
                <h3>Slozeni burgeru</h3>
                <table  style="width:50%;" border="1">
                    <tr>
                        <th>Nazev</th>
                        <th>Typ burgeru</th>
                        <th>Omacka</th>
                        <th>Okurka</th>
                        <th>Cibule</th>
                        <th>Rajce</th>
                        <th>Slanina</th>
                        <th>Syr</th>
                        <th>Dalsi prisada</th>
                    </tr>
                    <xsl:for-each select="/BURGERS/MENU/BURGER/CHEESE">
                        <xsl:sort select="typSyru"/>
                        
                            <tr>
                                <td><xsl:value-of select="NAME"/> </td>
                                <td><xsl:value-of select="TYPE"/></td>
                                <td><xsl:value-of select="SAUCE"/></td>
                                <td><xsl:value-of select="FIRSTLEVEL"/></td>
                                <td><xsl:value-of select="SECONDLEVEL"/></td>
                                <td><xsl:value-of select="THIRDLEVEL"/></td>
                                <td><xsl:value-of select="BACON"/></td>
                                <td><xsl:value-of select="CHEESE"/></td>
                                <td><xsl:value-of select="FOURTHLEVEL"/></td>
                            </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>