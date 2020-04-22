<?php

    ini_set('display_errors', '1');
    error_reporting(E_ALL);
    
   $reglas = new DOMDocument();
   $reglas->load("ciclos_medios.xsl");

   $datos = new DOMDocument();
   $datos->load("elorrieta.xml");

   $proc = new XSLTProcessor();
   $proc->importStylesheet($reglas);
   $proc->setParameter('', 'id_grado',$_GET['id_ciclo']);
   echo $proc->transformToXML($datos);

?>