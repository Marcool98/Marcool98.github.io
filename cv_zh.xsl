<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>马克·刘的简历</title> 
                 <style>
                    body {
                        font-family: Arial, sans-serif;
                        line-height: 1.6;
                        margin: 20px;
                        padding: 0;
                        background-color: #add8e6; 
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
                        background-color: #00FFFF;
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
                <h1>马克·刘的简历</h1> 
                <table>
                    <tr>
                        <th colspan="2">个人信息</th> 
                    </tr>
                    <tr>
                        <td>名字</td>
                        <td><xsl:value-of select="cv/info_perso/nom"/></td>
                    </tr>
                    <tr>
                        <td>电话</td> 
                        <td><xsl:value-of select="cv/info_perso/tel"/></td>
                    </tr>
                    <tr>
                        <td>电子邮件</td>
                        <td><xsl:value-of select="cv/info_perso/mail"/></td>
                    </tr>
                    <tr>
                        <td>年龄</td> 
                        <td><xsl:value-of select="cv/info_perso/age"/></td>
                    </tr>
                    <tr>
                        <td>地址</td> 
                        <td><xsl:value-of select="cv/info_perso/adresse"/></td>
                    </tr>
                    
                    <tr>
                        <th colspan="2">目标</th> 
                    </tr>
                    <tr>
                        <td>标题</td> 
                        <td><xsl:value-of select="cv/metier/titre"/></td>
                    </tr>
                    <tr>
                        <td>合同</td> 
                        <td><xsl:value-of select="cv/metier/contrat"/></td>
                    </tr>
                    <tr>
                        <td>工作节奏</td> 
                        <td><xsl:value-of select="cv/metier/rythme"/></td>
                    </tr>
                    <tr>
                        <td>可用性</td>
                        <td><xsl:value-of select="cv/metier/dispo"/></td>
                    </tr>
                    
                    <tr>
                        <th colspan="2">技能</th> 
                    </tr>
                    <tr>
                        <td>技术技能</td> 
                        <td><xsl:value-of select="cv/competences/hard"/></td>
                    </tr>
                    <tr>
                        <td>语言</td>
                        <td><xsl:value-of select="cv/competences/langues"/></td>
                    </tr>
                    <tr>
                        <td>软技能</td> 
                        <td><xsl:value-of select="cv/competences/soft"/></td>
                    </tr>
                    
                    <tr>
                        <th colspan="2">兴趣爱好</th> 
                    </tr>
                    <tr>
                        <td>兴趣爱好</td> 
                        <td><xsl:value-of select="cv/interet/interet"/></td>
                    </tr>
                    
                    <tr>
                        <th colspan="2">LinkedIn</th>
                    </tr>
                    <tr>
                        <td>LinkedIn</td>
                        <td><a href="{cv/linkedin/url}" class="linkedin-link"><xsl:value-of select="cv/linkedin/url"/></a></td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
