<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
	<head>		
		<title>Actividad 3</title>
		<link rel="stylesheet" href="css/estilos.css" />
	</head>
	<body>
		<h1><xsl:value-of select="//ite/empresa"/></h1>
       	<p>Teléfono:<xsl:value-of select="ite/telefono"/> </p>
  
		<xsl:for-each select="ite/profesores/profesor">
			<h2>Nombre: <xsl:value-of select="nombre"/> </h2>
			<p>Información del crucero: <xsl:value-of select="detalles/informacion"/> </p>
			<p>Compañia: <xsl:value-of select="detalles/cia"/> </p>
			<p>Días: <xsl:value-of select="detalles/dias"/> </p>
			<p>Fecha salida: <xsl:value-of select="detalles/fechaSalida"/> </p>
		</xsl:for-each>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet> 