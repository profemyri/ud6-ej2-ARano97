<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml">
    
    <xsl:output method="xml" indent="yes" omit-xml-declaration="no"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Catalog of Hobbies</title>
                <style type="text/css">
                    <![CDATA[
                    body {
                        font-family: 'Arial', sans-serif;
                        line-height: 1.6;
                        max-width: 800px;
                        margin: 0 auto;
                        padding: 20px;
                        background-color: #f5f5f5;
                    }
                    h1 {
                        color: #2c3e50;
                        text-align: center;
                        margin-bottom: 30px;
                        padding-bottom: 10px;
                        border-bottom: 2px solid #7f8c8d;
                    }
                    .hobby {
                        background-color: white;
                        padding: 15px 20px;
                        margin-bottom: 20px;
                        border-radius: 5px;
                        box-shadow: 0 2px 5px rgba(0,0,0,0.1);
                    }
                    h2 {
                        color: #2980b9;
                        margin-top: 0;
                    }
                    .meta {
                        margin-top: 10px;
                        font-size: 0.9em;
                        color: #555;
                    }
                    .meta p {
                        margin: 5px 0;
                    }
                    ]]>
                </style>
            </head>
            <body>
                <h1>Catalog of Hobbies</h1>
                <div class="hobbies-list">
                    <xsl:apply-templates select="hobbies/hobby"/>
                </div>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="hobby">
        <div class="hobby">
            <h2><xsl:value-of select="name"/></h2>
            <p class="description"><xsl:value-of select="description"/></p>
            <div class="meta">
                <p>Popularity: <xsl:value-of select="popularity"/></p>
                <xsl:if test="difficulty">
                    <p>Difficulty: <xsl:value-of select="difficulty"/></p>
                </xsl:if>
            </div>
        </div>
    </xsl:template>
    
</xsl:stylesheet>