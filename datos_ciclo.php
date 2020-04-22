<?php

    ini_set('display_errors', '1');
    error_reporting(E_ALL);
    
   $reglas = new DOMDocument();
   $reglas->load("datos_ciclo.xsl");

   $datos = new DOMDocument();
   $datos->load("elorrieta.xml");

   $proc = new XSLTProcessor();
   $proc->importStylesheet($reglas);
   $proc->setParameter('', 'id_ciclo',$_GET['id_grado']);
   echo $proc->transformToXML($datos);

?>