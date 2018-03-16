<!-- this xslt tells us all sorts of statistics related to the <mods:typeOfResource> element
    for our Islandora Citations collection. -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xb="http://com/exlibris/digitool/repository/api/xmlbeans"
    xmlns:mods="http://www.loc.gov/mods/v3" xmlns:mets="http://www.loc.gov/METS/"
    xmlns="info:lc/xmlns/premis-v2" version="2.0">
    <xsl:output method="text" indent="yes" encoding="UTF-8"/>

    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="mods:modsCollection">
        <xsl:for-each select="mods:mods/mods:originInfo/mods:dateIssued">
            <xsl:if test="mods:dateIssued=2016">
                <xsl:text>Count of all ETDs: </xsl:text>
                <xsl:value-of select="count(mods:mods)"/>
                <xsl:text>&#xA;&#xA;</xsl:text>
            </xsl:if>
        </xsl:for-each>
        
        <xsl:text>Count of first typeOfResource elements: </xsl:text>
        <xsl:value-of select="count(descendant::mods:mods/mods:typeOfResource[1])"/>
        <xsl:text>&#xA;</xsl:text>

        <xsl:text>Count of second typeOfResource elements: </xsl:text>
        <xsl:value-of select="count(descendant::mods:mods/mods:typeOfResource[2])"/>
        <xsl:text>&#xA;</xsl:text>

        <xsl:text>Count of typeOfResource elements with @collection: </xsl:text>
        <xsl:value-of select="count(descendant::mods:mods/mods:typeOfResource/@collection)"/>
        <xsl:text>&#xA;</xsl:text>

        <xsl:text>Count of typeOfResource elements with @manuscript: </xsl:text>
        <xsl:value-of select="count(descendant::mods:mods/mods:typeOfResource/@manuscript)"/>
        <xsl:text>&#xA;</xsl:text>

        <xsl:text>Count of typeOfResource elements with @usage: </xsl:text>
        <xsl:value-of select="count(descendant::mods:mods/mods:typeOfResource/@usage)"/>
        <xsl:text>&#xA;</xsl:text>
        <xsl:text>&#xA;</xsl:text>

        <xsl:for-each-group select="//mods:typeOfResource" group-by=".">
            <xsl:sort select="current-grouping-key()"/>
            <xsl:value-of select="normalize-space(current-grouping-key())"/>
            <xsl:text>:&#x9;</xsl:text>
            <xsl:value-of select="count(current-group())"/>



            <xsl:text>&#xA;Count of Collection attributes:  </xsl:text>
            <xsl:value-of
                select="count(//mods:typeOfResource[text()=current-grouping-key()]/@collection)"/>
            <xsl:text>&#xA;Count of manuscript attributes:  </xsl:text>
            <xsl:value-of
                select="count(//mods:typeOfResource[text()=current-grouping-key()]/@manuscript)"/>
            <xsl:text>&#xA;Count of usage attributes:  </xsl:text>
            <xsl:value-of
                select="count(//mods:typeOfResource[text()=current-grouping-key()]/@usage)"/>
            <xsl:text>&#xA;</xsl:text>
            <xsl:text>&#xA;</xsl:text>
        </xsl:for-each-group>
        <xsl:text>Text with a manuscript attribute</xsl:text>
        <xsl:text>&#xA;</xsl:text>
    </xsl:template>










</xsl:stylesheet>
<!--<xsl:for-each-group
                                    select="//Survey/INTELLCONT" group-by="PUBLICAVAIL">
                                    <xsl:sort select="current-grouping-key()"/>
                                    <xsl:value-of select="current-grouping-key()"/>
                                    <xsl:text>, </xsl:text>
                                </xsl:for-each-group>-->
