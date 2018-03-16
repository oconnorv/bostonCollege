<!-- This xslt looks up the different ways of encoding a date / keyDate into MODS and tells us how many
    of each type we have in Islandora. -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xb="http://com/exlibris/digitool/repository/api/xmlbeans"
    xmlns:mods="http://www.loc.gov/mods/v3" xmlns:mets="http://www.loc.gov/METS/"
    xmlns="info:lc/xmlns/premis-v2" version="2.0">
    <xsl:output method="text" indent="yes" encoding="UTF-8"/>

    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="mods:modsCollection">
        <xsl:text>Count of all dateIssued: </xsl:text>
        <xsl:value-of select="count(//mods:mods/mods:originInfo/mods:dateIssued)"/>
        <xsl:text>&#xA;&#xA;</xsl:text>
        
        <xsl:text>Count of all dateIssued where keyDate='yes': </xsl:text>
        <xsl:value-of select="count(//mods:mods/mods:originInfo/mods:dateIssued[@keyDate='yes'])"/>
        <xsl:text>&#xA;&#xA;</xsl:text>

        <xsl:text>Count of all dateCreated: </xsl:text>
        <xsl:value-of select="count(//mods:mods/mods:originInfo/mods:dateCreated)"/>
        <xsl:text>&#xA;&#xA;</xsl:text>
        
        <xsl:text>Count of all dateCreated where keyDate='yes': </xsl:text>
        <xsl:value-of select="count(//mods:mods/mods:originInfo/mods:dateCreated[@keyDate='yes'])"/>
        <xsl:text>&#xA;&#xA;</xsl:text>
        
        <xsl:text>Count of all dateCaptured: </xsl:text>
        <xsl:value-of select="count(//mods:mods/mods:originInfo/mods:dateCaptured)"/>
        <xsl:text>&#xA;&#xA;</xsl:text>
        
        <xsl:text>Count of all dateCaptured where keyDate='yes': </xsl:text>
        <xsl:value-of select="count(//mods:mods/mods:originInfo/mods:dateCaptured[@keyDate='yes'])"/>
        <xsl:text>&#xA;&#xA;</xsl:text>
        
        <xsl:text>Count of all dateOther: </xsl:text>
        <xsl:value-of select="count(//mods:mods/mods:originInfo/mods:dateOther)"/>
        <xsl:text>&#xA;&#xA;</xsl:text>
        
        <xsl:text>Count of all dateOther where keyDate='yes': </xsl:text>
        <xsl:value-of select="count(//mods:mods/mods:originInfo/mods:dateOther[@keyDate='yes'])"/>
        <xsl:text>&#xA;&#xA;</xsl:text>
    </xsl:template>
</xsl:stylesheet>
