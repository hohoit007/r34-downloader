<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl" xmlns:wix="http://schemas.microsoft.com/wix/2006/wi">
    <xsl:template match="@*|*">
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:apply-templates select="*" />
        </xsl:copy>
    </xsl:template>

    <xsl:output method="xml" indent="yes" />

    <xsl:key name="exe-search" match="wix:Component[contains(wix:File/@Source, 'r34Downloader.exe')]" use="@Id" />
    <xsl:template match="wix:Component[key('exe-search', @Id)]" />
    <xsl:template match="wix:ComponentRef[key('exe-search', @Id)]" />

</xsl:stylesheet>
