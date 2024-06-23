<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:param name="lang" select="'fr'" />

    <xsl:template match="page">
        <html>
        <head>
            <title><xsl:value-of select="title/*[name()=$lang]" /></title>
        </head>
        <body>
            <h1><xsl:value-of select="title/*[name()=$lang]" /></h1>
            <div>
                <xsl:value-of select="content/*[name()=$lang]" />
            </div>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
