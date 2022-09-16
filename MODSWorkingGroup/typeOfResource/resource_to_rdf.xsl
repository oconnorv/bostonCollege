<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:mods="http://www.loc.gov/mods/v3" xmlns:xb="http://com/exlibris/digitool/repository/api/xmlbeans"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xlink="http://www.w3.org/1999/xlink"
    xsi:schemaLocation="http://www.loc.gov/METS/ http://www.loc.gov/standards/mets/mets.xsd http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-5.xsd"
    version="2.0">
    <xsl:variable name="typeLookup" select="document(modsRDFTypeLookup.xml)"/>
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" omit-xml-declaration="no"/>
  
    <xsl:template match="@*|node()" mode="copy">
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:apply-templates mode="copy" />
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="mods:typeOfResource">
        <xsl:variable name="modsType" select="."/>
        <xsl:value-of select="$typeLookup/modsRDFTypeLookup/locrdf[@mods]/@rdf"/>
        <xsl:apply-templates/>
    </xsl:template>
    
</xsl:stylesheet>