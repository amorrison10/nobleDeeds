<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns="http://www.w3.org/1999/xhtml"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    version="2.0">
    <xsl:output method="html" indent="yes" encoding="utf-8"/>
    <xsl:template match="TEI">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="hospitality.css"></link>
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
    <xsl:template match="hi">
        <em>
            <xsl:apply-templates/>
        </em>
    </xsl:template>
    <xsl:template match="div">
        <div>
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    <xsl:template match="teiHeader"/>
    <xsl:template match="lb">
        
    </xsl:template>
</xsl:stylesheet>