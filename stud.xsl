<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Student Application</title>
                <style>
                    table { border-collapse: collapse; width: 50%; }
                    th, td { border: 1px solid black; padding: 8px; text-align: left; }
                    .high-grade { background-color: #c8e6c9; }
                    .low-grade { background-color: #ffcdd2; }
                </style>
            </head>
            <body>
                <h2>Student Details</h2>
                <table>
                    <tr>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Grade</th>
                        <th>Status</th>
                    </tr>
                    <xsl:for-each select="students/student">
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="age"/></td>
                            <td><xsl:value-of select="grade"/></td>
                            <td>
                                <xsl:choose>
                                    <xsl:when test="grade='A'">
                                        <span class="high-grade">Excellent</span>
                                    </xsl:when>
                                    <xsl:when test="grade='B'">
                                        <span class="high-grade">Good</span>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <span class="low-grade">Needs Improvement</span>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
