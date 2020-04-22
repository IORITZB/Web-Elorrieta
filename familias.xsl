<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output omit-xml-declaration="yes" encoding="UTF-8" method="html" doctype-public="-//W3C//DTD HTML 4.01//EN" doctype-system="http://www.w3.org/TR/html4/strict.dtd" indent="yes" version="4.0"/>

	<xsl:param name="id_ciclo"></xsl:param>
	<xsl:template match="/">
		<html>
			<head>
				<title>Familias Profesionales</title>
				<link rel="stylesheet" type="text/css" href="css/estilo.css"/>
				<link href="https://fonts.googleapis.com/css?family=Oswald&amp;display=swap" rel="stylesheet"/> <!-- &amp; es el & -->
			</head>
			<body>
				<div class="ventana" style="background-image: url('css/imagenes/bg-familias.jpg')"> 
					<div class="pantalla">
						<div class="cabecera">
							<a href="index.html">
	                            <img src="css/imagenes/cabecera.png" alt="logotipo"/>
	                           <!-- <img src="bg-familias.jpg" usemap="#image-map">

									<map name="image-map">
									    <area target="framename" alt="" title="" href="#popup1" coords="209,448,209,339,304,280,403,337,403,449,304,505" shape="poly">
									    <area target="framename" alt="" title="" href="#popup2" coords="414,337,511,280,607,338,607,450,510,505,412,451" shape="poly">
									    <area target="framename" alt="" title="" href="#popup3" coords="617,338,710,280,810,338,807,449,711,505,615,449,614,344" shape="poly">
									    <area target="framename" alt="" title="" href="#popup4" coords="819,342,917,283,1012,341,1014,450,914,506,819,450" shape="poly">
									    <area target="framename" alt="" title="" href="#popup5" coords="106,624,105,512,202,457,301,515,302,628,201,683" shape="poly">
									    <area target="framename" alt="" title="" href="#popup6" coords="312,520,309,626,405,684,501,628,503,513,406,466" shape="poly">
									    <area target="framename" alt="" title="" href="#popup7" coords="516,514,513,631,609,685,706,627,704,515,612,463" shape="poly">
									    <area target="framename" alt="" title="" href="#popup8" coords="720,518,718,625,815,685,907,631,908,519,812,460" shape="poly">
									    <area target="framename" alt="" title="" href="#popup9" coords="924,515,923,628,1015,684,1115,626,1115,515,1019,459" shape="poly">
									</map>-->
	                        </a>
						</div>
						<div class="central">
							<ul class="grados">
								<xsl:for-each select="elorrieta/familia">
									<li class="gradosFamilias"> 
										<xsl:variable name="contador" select="position()"/>
										<div>
		                                   	<a class="button">
		                                   		<xsl:attribute name="href"><xsl:value-of select="concat('#popup',$contador)"/></xsl:attribute>
		                                   		<!-- Por cada familia abre un li con su respectivo link. Al hacer click en él aparecen los grados de dicha familia. -->
												<span><xsl:value-of select="nombre"/></span>
											</a>
										</div>
										
										<div class="overlay light">
											<xsl:attribute name="id"><xsl:value-of select="concat('popup',$contador)"/></xsl:attribute>

											<a class="cancel" href="#"></a>

											<div class="popup">
												<h3>Grados</h3>
												<div class="content">
													<xsl:for-each select="ciclo">
														<a class="ciclos_familia">
															<xsl:attribute name="href">
																datos_ciclo.php?id_grado=<xsl:value-of select="@id"/>
															</xsl:attribute>
															<span><xsl:value-of select="nombre"/></span>
														</a>
													</xsl:for-each>
												</div>
												<div class="leyenda">
													<div class="Gsuperior">Grado superior</div>
													<div class="Gmedio">Grado Medio</div>
												</div>
											</div>
										</div>
	                                </li>
								</xsl:for-each>
							</ul>
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





