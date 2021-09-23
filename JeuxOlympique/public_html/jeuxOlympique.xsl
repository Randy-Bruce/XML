<xsl:stylesheet version = '1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
    <xsl:template match="oui">
        <html>
            <head>
                
                <link href="jeuxOlympique.css" type="text/css" rel="stylesheet" />
                
            </head>
            <body>
                <xsl:apply-templates />
            </body>	
        </html>
    </xsl:template>



    <xsl:template match="tableau">        
        <table>		
            <tr>
                <th> Pays </th>
                <th> Or </th>
                <th> Argent </th>
                <th> Bronze </th>
            </tr>            
            <xsl:apply-templates />
        </table>
    </xsl:template>
    
    
    
    <xsl:template match="pays">
        <tr>
            <td>
                <xsl:value-of select="@nomDePays" />
            </td>
            <xsl:apply-templates />
        </tr>
    </xsl:template>
    
    <xsl:template match="medaille">
        <tr>
            <td>
                <xsl:value-of select="@typeDeMedaille" />
            </td>
            <xsl:apply-templates />
        </tr>
    </xsl:template>
    
    
    <xsl:template match="medaille">
        <td class="medaille">
            <xsl:value-of select="." />
        </td>	
    </xsl:template>
                
</xsl:stylesheet>