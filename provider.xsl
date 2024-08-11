<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:agro="http://www.example.com/provider">
    <xsl:template match="/agro:agroProviders">
        <html>
            <head>
            <style>
                    table {
                        width: 100%;
                        border-collapse: collapse;
                        margin: 20px 0;
                        font-size: 16px;
                        text-align: left;
                    }
                    th, td {
                        border: 1px solid #dddddd;
                        padding: 8px;
                    }
                    th {
                        background-color: #f2f2f2;
                        color: #333;
                    }
                    tr:nth-child(even) {
                        background-color: #f9f9f9;
                    }
                    tr:hover {
                        background-color: #f1f1f1;
                    }
                    h1,h2,h3,h4 {
                        font-family: Arial, sans-serif;
                        color: #333;
                    }
                </style>
            </head>
            <body>
                <h1>Domain Name: agro Service Providers</h1>
                <table border="1">
                    <tr>
                        <th>Provider Id</th>
                        <th>Provider Name</th>
                        <th>Phone</th>
                        <th>Email</th>
                        <th>Address</th>
                        <th>Price</th>
                        <th>Rating</th>
                        <th>Longitude</th>
                        <th>Latitude</th>
                    </tr>
                    <xsl:for-each select="agro:provider">
                        <tr>
                            <td><xsl:value-of select="@id"/></td>
                            <td><xsl:value-of select="agro:name"/></td>
                            <td><xsl:value-of select="agro:phone"/></td>
                            <td><xsl:value-of select="agro:email"/></td>
                            <td><xsl:value-of select="agro:address"/></td>
                            <td><xsl:value-of select="agro:price"/></td>
                            <td><xsl:value-of select="agro:rating"/></td>
                            <td><xsl:value-of select="agro:longitude"/></td>
                            <td><xsl:value-of select="agro:latitude"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                <xsl:for-each select="agro:provider">
                    <h2>Provider Name : <xsl:value-of select="agro:name"/></h2>
                    <h3>Menu : <xsl:value-of select="agro:menu/agro:menuName"/></h3>
                    <h4>Description : <xsl:value-of select="agro:menu/agro:description"/></h4>
                    <table border="1">
                        <tr>
                            <th>Name</th>
                            <th>Diet</th>
                            <th>Price</th>
                        </tr>
                    <xsl:for-each select="agro:menu/agro:item">
                        <tr>
                            <td><xsl:value-of select="agro:itemName"/></td>
                            <td><xsl:value-of select="agro:itemDiet"/></td>
                            <td><xsl:value-of select="agro:itemPrice"/></td>
                        </tr>
                    </xsl:for-each>
                </table>


                </xsl:for-each>
            </body>
            <script>
            </script>
        </html>
    </xsl:template>
</xsl:stylesheet>
