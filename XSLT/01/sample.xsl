<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/"> <!-- / :root xml node -->
        <html>
            <body>
                <h3>Hello from XSL</h3>
                <ul>
                    <xsl:for-each select="biblio/etudiant">
                        <li>
                            <xsl:value-of select="@nom"/>, 
                            <xsl:value-of select="@prenom"/>, 
                            <xsl:value-of select="@code"/>
                        </li>
                        <table border="1" width="80%">
                            <tr>
                                <td>ID</td>
                                <td>Titre</td>
                                <td>Date</td>
                                <td>Rendu</td>
                            </tr>
                            <xsl:for-each select="livre">
                                <tr>
                                    <td><xsl:value-of select="@id"/></td>
                                    <td><xsl:value-of select="@titre"/></td>
                                    <td><xsl:value-of select="@dateEmrunt"/></td>
                                    <td><xsl:value-of select="@rendu"/></td>
                                </tr>
                            </xsl:for-each>
                            <tr>
                                <td colspan="3">nomber of books</td>
                                <td><xsl:value-of select="count(livre)"/></td>
                            </tr>
                            <tr>
                                <td colspan="3">nomber of books non rendu</td>
                                <td><xsl:value-of select="count(livre[@rendu='NON'])"/></td>
                            </tr>
                        </table>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>