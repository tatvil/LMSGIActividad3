<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html lang="es">
        <head>
            <title>ITE</title>
            <link rel="stylesheet" href="css/estilos.css"/>
        </head>
        <body>
            <h1><xsl:value-of select="ite/@nombre"/> </h1>
            <div>
            <p>Empresa:<xsl:value-of select="ite/empresa"/> </p>
            <p>Teléfono:<xsl:value-of select="ite/telefono"/> </p>
            <p>Contacto:
                <a>
                    <xsl:attribute name="href">http://<xsl:value-of select="ite/@web"/>
                            </xsl:attribute>
                    <xsl:value-of select="ite/@web"/>
                </a>
            </p>
            </div>

            <table class="ciclos">
            <caption><span>Ciclos formativos</span></caption>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Grado</th>
                        <th>Año</th>
                    </tr>
                </thead>
                <tbody>
                    <xsl:for-each select="ite/ciclos/ciclo">
                    <tr>
                        <td><xsl:value-of select="@id"/></td>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="grado"/></td>
                        <td><xsl:value-of select="decretoTitulo/@año"/></td>
                    </tr>
                    </xsl:for-each>
                </tbody>
            </table>

<hr/>
<h2>Equipo directivo</h2>
            <table class="director">
            <caption><span>Director</span></caption>
                <thead>
                    <tr>
                       <th>Nombre</th>
                        <th>Despacho</th>
                    </tr>
                </thead>
                <tbody>
                    <xsl:for-each select="ite/director">
                    <tr>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="despacho"/></td>
                    </tr>
                    </xsl:for-each>
                </tbody>

            </table>


            <table class="jefe_estudios">
            <caption><span>Jefe de estudios</span></caption>
                <thead>
                    <tr>
                       <th>Nombre</th>
                        <th>Despacho</th>
                    </tr>
                </thead>
                <tbody>
                    <xsl:for-each select="ite/jefe_estudios">
                    <tr>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="despacho"/></td>
                    </tr>
                    </xsl:for-each>
                </tbody>
               </table>
    <hr/>
    <h2>Personal docente</h2>
            
            <xsl:for-each select="ite/profesores">
                <xsl:for-each select="profesor">
                    <ol>
                        <xsl:choose>
                            <xsl:when test="id='1'"><li><xsl:value-of select="id"/>. <xsl:value-of select="nombre"/></li></xsl:when>
                            <xsl:when test="id='2'"><li><xsl:value-of select="id"/>. <xsl:value-of select="nombre"/></li></xsl:when>
                            <xsl:when test="id='3'"><li><xsl:value-of select="id"/>. <xsl:value-of select="nombre"/></li></xsl:when>
                            <xsl:when test="id='4'"><li><xsl:value-of select="id"/>. <xsl:value-of select="nombre"/></li></xsl:when>
                        </xsl:choose>
                    </ol>
                </xsl:for-each>            
                    
            </xsl:for-each>


            <aside>
            <h2>Solicitud de información</h2>
            <form action="" method="post">
                <fieldset>
                    <legend>Datos personales</legend>
                    <label>Nombre:</label>
                    <input type="text" name="nombre" placeholder="nombre" /><br/>
                    <label>Apellidos:</label>
                    <input type="text" name="apellidos" placeholder="apellidos" /><br/>
                    <label>Telefono:</label>
                    <input type="text" name="telefono" placeholder="+34-123456789"  pattern="[+][0-9]{2}-[0-9]{9}" /><br/>
                    <label>Correo electronico:</label>
                    <input type="text" name="correo" placeholder="mail@mail.com"  /><br/>
                    <p>¿Qué quieres preguntar?</p>
                    <p><textarea name="pregunta" cols="40" rows="5"></textarea></p>
                    <input type="submit" value="Enviar formulario"/>
                    <input type="reset" value="Reiniciar formulario"/>
                </fieldset>
                
            </form>  
            </aside>
        </body>
   
    </html>
</xsl:template>
</xsl:stylesheet>