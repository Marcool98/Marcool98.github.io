<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>CV de Marc LIU</title>
                 <style>
                    body {
                        font-family: Arial, sans-serif;
                        line-height: 1.6;
                        margin: 20px;
                        padding: 0;
                    }
                    h1 {
                        text-align: center;
                        border-bottom: 2px solid #333;
                        padding-bottom: 10px;
                    }
                    table {
                        width: 100%;
                        border-collapse: collapse;
                        margin-top: 20px;
                    }
                    th, td {
                        padding: 10px;
                        border-bottom: 1px solid #ccc;
                    }
                    th {
                        background-color: #00FFFF;;
                        text-align: left;
                    }
                    td {
                        text-align: left;
                    }
                    .linkedin-link {
                        color: #0077b5;
                        text-decoration: none;
                    }
                </style>
            </head>
            <body>
                <h1>CV de Marc LIU</h1>
                <table>
                    <tr>
                        <th colspan="2">Informations Personnelles</th>
                    </tr>
                    <tr>
                        <td>Nom</td>
                        <td><xsl:value-of select="cv/info_perso/nom"/></td>
                    </tr>
                    <tr>
                        <td>Téléphone</td>
                        <td><xsl:value-of select="cv/info_perso/tel"/></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><xsl:value-of select="cv/info_perso/mail"/></td>
                    </tr>
                    <tr>
                        <td>Âge</td>
                        <td><xsl:value-of select="cv/info_perso/age"/></td>
                    </tr>
                    <tr>
                        <td>Adresse</td>
                        <td><xsl:value-of select="cv/info_perso/adresse"/></td>
                    </tr>
                    
                    <tr>
                        <th colspan="2">Objectif</th>
                    </tr>
                    <tr>
                        <td>Titre</td>
                        <td><xsl:value-of select="cv/metier/titre"/></td>
                    </tr>
                    <tr>
                        <td>Contrat</td>
                        <td><xsl:value-of select="cv/metier/contrat"/></td>
                    </tr>
                    <tr>
                        <td>Rythme</td>
                        <td><xsl:value-of select="cv/metier/rythme"/></td>
                    </tr>
                    <tr>
                        <td>Disponibilité</td>
                        <td><xsl:value-of select="cv/metier/dispo"/></td>
                    </tr>
                    
                    <tr>
                        <th colspan="2">Compétences</th>
                    </tr>
                    <tr>
                        <td>Compétences Techniques</td>
                        <td><xsl:value-of select="cv/competences/hard"/></td>
                    </tr>
                    <tr>
                        <td>Langues</td>
                        <td><xsl:value-of select="cv/competences/langues"/></td>
                    </tr>
                    <tr>
                        <td>Compétences Comportementales</td>
                        <td><xsl:value-of select="cv/competences/soft"/></td>
                    </tr>
                    
                    <tr>
                        <th colspan="2">Centres d'Intérêt</th>
                    </tr>
                    <tr>
                        <td>Centres d'Intérêt</td>
                        <td><xsl:value-of select="cv/interet/interet"/></td>
                    </tr>
                    
                    <tr>
                        <th colspan="2">LinkedIn</th>
                    </tr>
                    <tr>
                        <td>LinkedIn</td>
                        <td><a href="{cv/linkedin/url}"><xsl:value-of select="cv/linkedin/url"/></a></td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
