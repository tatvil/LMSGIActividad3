<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
			<head>
				<title>Grupo 16 - LMSGI - Actividad 3</title>
 				<link rel="stylesheet" href="css/estilos.css" /> 
			</head>
			<body>
				<h1><xsl:value-of select="ite/@nombre"/> (<xsl:value-of select="ite/empresa"/>)</h1>

<!-- 2 ENLACES: Me ha costado un poco ver como se ponian, pero al final lo he conseguido (¡¡Gracias internet!!) -->
				<p class="datos-empresa"><a><xsl:attribute name='href'><xsl:value-of select='ite/@web'/></xsl:attribute><xsl:value-of select="ite/@web"/></a></p>
				<p class="datos-empresa"><a><xsl:attribute name='href'>tel:<xsl:value-of select='ite/telefono'/></xsl:attribute><xsl:value-of select="ite/telefono"/></a></p>

<!-- LISTA NO-ORDENADA 
		- Hemos juntado el director y el jefe de estudios para conseguir tener una lista.
		- En el segundo xml que hemos creado, si que hemos puesto más jefes de estudios (adjuntos), para que la lista fuera algo más vistosa -->
				<h2>Consejo escolar</h2>
				<ul>
					<xsl:for-each select="ite/director">
						<li><b>Director: </b> <xsl:value-of select="nombre"/> (Despacho: <xsl:value-of select="despacho"/>)</li>
					</xsl:for-each>
					<xsl:for-each select="ite/jefe_estudios">
						<li><b>Jefe de estudios: </b> <xsl:value-of select="nombre"/> (Despacho: <xsl:value-of select="despacho"/>)</li>
					</xsl:for-each>
				</ul>

<!-- TABLA 1 con los profesores-->

				<h2>Profesores</h2>
				<table>
					<tr>
						<th>ID</th>
						<th>Nombre</th>
					</tr>
					<xsl:for-each select="ite/profesores/profesor">
						<tr>
							<td>
								<xsl:value-of select="id"/>
							</td>
							<td>
								<xsl:value-of select="nombre"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>

<!-- LISTA ORDENADA como el archivo xml dado no es muy extenso, hemos utilizado los mismos datos que en la tabla anterior -->
				<ol>
					<xsl:for-each select="ite/profesores/profesor">
						<li><xsl:value-of select="nombre"/></li>
					</xsl:for-each>
				</ol>

<!-- TABLA 2 con los ciclos formativos-->
				<h2>Ciclos formativos</h2>
				<table>
					<tr>
						<th>ID</th>
						<th>Nombre</th>
						<th>Grado</th>
						<th>Decreto</th>
					</tr>
					<xsl:for-each select="ite/ciclos/ciclo">
						<tr>
							<td>
								<xsl:value-of select="@id"/>
							</td>
							<td>
								<xsl:value-of select="nombre"/>
							</td>
							<td>
								<xsl:value-of select="grado"/>
							</td>
							<td>
								<xsl:value-of select="decretoTitulo/@ano"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>

<!-- FORMULARIO muy básico, porque ya hicimos una practica con formularios mas extensos-->

				<form action="procesarPeticion.jsp" method="get">
					Subscribete a nuestra newletter <input type="email" name="email" placeholder="email"/>
					<input class="boton" type="submit" value="Enviar"/>
				</form>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet> 