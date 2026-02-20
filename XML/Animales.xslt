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
        <h2>Listado de Animales:</h2>
        <table>
          <tr>
            <th>ID del Centro</th>
            <th>Disponibilidad</th>
            <th>ID del Animal</th>
            <th>Nombre</th>
            <th>Edad</th>
            <th>Raza</th>
            <th>Caracteristicas</th>
            <th>Necesidades Especiales</th>
          </tr>
          <xsl:for-each select="animales/animal">
            <tr>
              <td><strong><xsl:value-of select="@idCentroAnimal"/></strong></td>
              <td><xsl:value-of select="@disponibilidad"/></td>
              <td><xsl:value-of select="@idAnimal"/></td>
              <td><xsl:value-of select="nombre"/></td>
              <td><xsl:value-of select="edad"/></td>
              <td><xsl:value-of select="raza"/></td>
              <td><xsl:value-of select="caracteristicas"/></td>
              <td><xsl:value-of select="necesidadesEspeciales"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>