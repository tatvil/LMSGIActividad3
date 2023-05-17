<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
		<head>		
			<title>Actividad 3</title>
			<link rel="stylesheet" href="css/estilos.css" />
		</head>
<body>
		<!-- Con esta etiqueta (value-of) seleccionamos el nodo texto del nodo al que
			estemos apuntando. El atributo select nos permite establecer la expresión XPath
			para buscar dicho nodo. En este caso es una consulta relativa a donde este situado
			el elemento "template" (nodo raíz)
		-->
		<h1><xsl:value-of select="ite/empresa"/></h1>

    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Title</th>
        <th>Artist</th>
      </tr>
      <xsl:for-each select="catalog/cd">
        <tr>
          <td><xsl:value-of select="title"/></td>
          <td><xsl:value-of select="artist"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet> 