<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output omit-xml-declaration="yes" encoding="UTF-8" method="html" doctype-public="-//W3C//DTD HTML 4.01//EN" doctype-system="http://www.w3.org/TR/html4/strict.dtd" indent="yes" version="4.0" />
<xsl:param name="id_ciclo"></xsl:param>
    <xsl:template match="/">
        <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                <link rel="stylesheet" type="text/css" href="css/estilo.css"/>
                <title>Datos del Grado</title>
            </head>
            <body>
                <div class="ventana datos_ciclo" style="background-image:url('css/imagenes/bruno-bergher-157009-unsplash.jpg')">
                    <div class="pantalla">
                        <div class="cabecera">
                            <a href="index.html"><img src="css/imagenes/cabecera.png" alt="logotipo"/></a>
                        </div>
                        <div class="central">
                            <xsl:for-each select="elorrieta/familia/ciclo">
                                <xsl:if test="@id=$id_ciclo">
                                    <div id="titulo_datos">
                                        <h1>
                                            <xsl:value-of select="nombre"/>
                                        </h1>

                                        <div id="resumen">
                                            <p>
                                                <xsl:value-of select="competencia"/>
                                            </p>
                                            <ul>
                                                <li>
                                                    <p>
                                                        <span>Sede: </span>
                                                        <xsl:value-of select="sede"/>
                                                    </p>
                                                </li>
                                                <li>
                                                    <p>
                                                        <span>Titulación adquirida: </span>
                                                        <xsl:value-of select="titulacion"/>
                                                    </p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="botonera">
                                        <div id="salidas_laborales">
                                            <a class="button" href="#popup_salidas"><span>Salidas laborales</span></a>

                                            <div class="overlay light" id="popup_salidas">
                                                <a class="cancel" href="#"></a>

                                                <div class="contenido_salidas popup">
                                                    <h3>Salidas laborales</h3>
                                                    <div class="info_salidas">
                                                        <xsl:for-each select="trabajo">
                                                            <p>
                                                                <xsl:value-of select="."/>
                                                            </p>
                                                        </xsl:for-each>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                           
                                        <div id="acceso">
                                            <a class="button" href="#popup_acceso"><span>Modo de acceso</span></a>
                                            <div class="overlay light" id="popup_acceso">
                                                <a class="cancel" href="#"></a>

                                                <div class="contenido_acceso popup">
                                                    <h3>Modo de acceso</h3>
                                                    <div class="info_acceso">
                                                        <h4>Acceso directo</h4>
                                                        <xsl:for-each select="acceso_directo">
                                                        <p>
                                                            <xsl:value-of select="."/>
                                                        </p>
                                                        </xsl:for-each>
                                                        <h4>Acceso mediante prueba</h4>
                                                        <xsl:for-each select="acceso_prueba">
                                                        <p>
                                                            <xsl:value-of select="."/>
                                                        </p>
                                                        </xsl:for-each>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        
                                        <div id="asignaturas">
                                            <a class="button" href="#popup_asignaturas"><span>Módulos</span></a>

                                            <div class="overlay light" id="popup_asignaturas">
                                                <a class="cancel" href="#"></a>

                                                <div class="contenido_asignaturas popup">
                                                    <h3>Módulos</h3>
                                                    <div class="info_asignaturas">
                                                        <div class="primero">
                                                            <p>Primer Curso</p>
                                                            <table class="tabla_primero">
                                                                <tr>
                                                                    <th>Nombre</th>
                                                                    <th class="horas">Horas</th>
                                                                </tr>
                                                                <xsl:for-each select="primero/modulo">
                                                                <tr>
                                                                    <td><xsl:value-of select="nombre"/></td>
                                                                    <td class="horas"><xsl:value-of select="horas"/></td>
                                                                </tr>
                                                                </xsl:for-each>
                                                            </table>
                                                       </div>

                                                        <div class="segundo">
                                                            <p>Segundo Curso</p>
                                                            <table class="tabla_segundo">
                                                                <tr>
                                                                    <th>Nombre</th>
                                                                    <th class="horas">Horas</th>
                                                                </tr>
                                                                <xsl:for-each select="segundo/modulo">
                                                                    <tr>
                                                                        <td><xsl:value-of select="nombre"/></td>
                                                                        <td class="horas"><xsl:value-of select="horas"/></td>
                                                                    </tr>
                                                                </xsl:for-each>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </xsl:if>
                            </xsl:for-each>
                        </div>
                    </div>
                    <div class="footer">
                        <a href="index.html"><div class="boton"><img src="css/imagenes/home.png"/><br/>home</div></a>
                        <a><xsl:attribute name="href">ciclos_superiores.php?id_ciclo=Superior</xsl:attribute><div class="boton"><img src="css/imagenes/porsuperior.png"/><br/>grado superior</div></a>
                        <a><xsl:attribute name="href">ciclos_medios.php?id_ciclo=Medio</xsl:attribute><div class="boton"><img src="css/imagenes/pormedio.png"/><br/>grado medio</div></a>
                        <a href="familias.php"><div class="boton"><img src="css/imagenes/porfamilias.png"/><br/>familias</div></a>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>