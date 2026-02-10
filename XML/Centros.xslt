<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <style>
          table { border-collapse: collapse; width: 100%; font-family: Arial, sans-serif; }
          th { background-color: #4CAF50; color: white; padding: 10px; }
          td { border: 1px solid #ddd; padding: 8px; text-align: center; }
          tr:nth-child(even) { background-color: #f2 f2 f2; }
          h2 { color: #333; }
        </style>
      </head>
      <body>
        <h2>Listado de Centros: <xsl:value-of select="empresa/@nombreEmpresa"/></h2>
        <table>
          <tr>
            <th>ID Centro</th>
            <th>Localidad</th>
            <th>Duración</th>
            <th>ID Donativo</th>
          </tr>
          <xsl:for-each select="empresa/centro">
            <tr>
              <td><strong><xsl:value-of select="@IDcentro"/></strong></td>
              <td><xsl:value-of select="Localidad"/></td>
              <td><xsl:value-of select="Duracion"/></td>
              <td><xsl:value-of select="IDDonativoCen"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>