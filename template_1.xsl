<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">

        <html>
            <head>
                <title>Задание №1</title>
                <script id="MathJax-script" src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>
            </head>

            <body>
                <math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
                <semantics>
                    <xsl:for-each select="root/*">
                        <mrow>
                            <xsl:apply-templates select="." />
                        </mrow>
                    </xsl:for-each>
                </semantics>
                </math>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="строка">
        <mrow>
            <xsl:for-each select="./*">
                <xsl:apply-templates select="." />
            </xsl:for-each>
        </mrow>
    </xsl:template>

    <xsl:template match="операнд">
        <mi><xsl:value-of select="." /></mi>
    </xsl:template>

    <xsl:template match="оператор">
        <mo><xsl:value-of select="." /></mo>
    </xsl:template>

    <xsl:template match="число">
        <mn><xsl:value-of select="." /></mn>
    </xsl:template>

    <xsl:template match="корень">
        <msqrt>
            <xsl:for-each select="./*">
                <xsl:apply-templates select="." />
            </xsl:for-each>
        </msqrt>
    </xsl:template>

    <xsl:template match="дробь">
        <mfrac>
            <xsl:for-each select="./*">
                <xsl:apply-templates select="." />
            </xsl:for-each>
        </mfrac>
    </xsl:template>

    <xsl:template match="низверх">
        <munderover>
            <xsl:for-each select="./*">
                <xsl:apply-templates select="." />
            </xsl:for-each>
        </munderover>
    </xsl:template>

    <xsl:template match="верх">
        <msup>
            <xsl:for-each select="./*">
                <xsl:apply-templates select="." />
            </xsl:for-each>
        </msup>
    </xsl:template>

    <xsl:template match="низ">
        <msub>
            <xsl:for-each select="./*">
                <xsl:apply-templates select="." />
            </xsl:for-each>
        </msub>
    </xsl:template>
    
</xsl:stylesheet>