<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="lang" select="'fr'" />
    <xsl:template match="/">
        <html lang="{$lang}">
            <head>
                <title>
                    <xsl:value-of select="/translations/page[@name='cv']/title/*[name()=$lang]" />
                </title>
                <link rel="stylesheet" href="style.css" />
            </head>
            <body>
                <header>
                    <nav>
                        <ul>
                            <li><a href="index.html">Accueil</a></li>
                            <li><a href="cv.html">CV</a></li>
                            <li><a href="#" onclick="changeLanguage('fr')"><img src="images/france.png" alt="Français"></a></li>
                            <li><a href="#" onclick="changeLanguage('en')"><img src="images/uk.png" alt="English"></a></li>
                            <li><a href="#" onclick="changeLanguage('zh')"><img src="images/china.png" alt="中文"></a></li>
                        </ul>
                    </nav>
                </header>
                <main>
                    <h1>
                        <xsl:value-of select="/translations/page[@name='cv']/title/*[name()=$lang]" />
                    </h1>
                    <div>
                        <xsl:for-each select="/translations/page[@name='cv']/content/*[name()=$lang]/*">
                            <p>
                                <xsl:value-of select="." />
                            </p>
                        </xsl:for-each>
                    </div>
                </main>
                <footer>
                    <p>&copy; 2024 Mon Nom. Tous droits réservés.</p>
                </footer>
                <script src="script.js"></script>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
