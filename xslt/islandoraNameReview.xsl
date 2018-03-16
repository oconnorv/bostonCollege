<!-- This xslt prints all of the unique contents of a specified element/attribute (in this case roleTerm) and how many
times they occur.-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xb="http://com/exlibris/digitool/repository/api/xmlbeans"
    xmlns:mods="http://www.loc.gov/mods/v3" xmlns:mets="http://www.loc.gov/METS/"
    xmlns="info:lc/xmlns/premis-v2" version="2.0">
    <xsl:output method="text" indent="yes" encoding="UTF-8"/>

    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>
 
    <xsl:template match="mods:modsCollection">
        <table>
            <xsl:for-each-group select="//mods:mods/mods:name/mods:role/mods:roleTerm[@type='text']" group-by=".">
                <tr>
                    <td><xsl:value-of select="."/></td>
                    <xsl:text>: </xsl:text>
                    <td><xsl:value-of select="count(current-group())"/></td>
                    <xsl:text>&#xA;</xsl:text>
                </tr>
            </xsl:for-each-group>
        </table>
    </xsl:template>
</xsl:stylesheet>
