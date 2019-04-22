<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns="http://www.w3.org/1999/xhtml"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" version="2.0">
    <xsl:output method="html" indent="yes" encoding="utf-8"/>
    <xsl:template match="TEI">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="all_chapter.css"/>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

<xsl:template match="p">
    <p>
        <xsl:apply-templates/>
    </p>
</xsl:template>
    <xsl:template match="pb">
        <xsl:element name="a">
            <xsl:attribute name="href">
                <xsl:value-of select="concat('full/', @facs)"/>
            </xsl:attribute>
            <xsl:element name="img">
                <xsl:attribute name="src">
                    <xsl:value-of select="concat('thumbs/', @facs)"/>
                </xsl:attribute>
            </xsl:element>
        </xsl:element>
    </xsl:template>
    <xsl:template match="person[@sex='female']">
        <p>
            <b>
                <xsl:apply-templates/>
            </b>
        </p>
    </xsl:template>
    <xsl:template match="teiHeader"/>
<xsl:template match="div2/head">
    <h1>
        <xsl:apply-templates/>
    </h1>
</xsl:template>

</xsl:stylesheet>
