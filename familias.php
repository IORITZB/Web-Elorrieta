
<?php

    /*
    Generamos un nuevo documento DOM con las reglas XSLT y otro con los datos XML
    */
    ini_set('display_errors', '1');
    error_reporting(E_ALL);
    
   $reglas = new DOMDocument();
   $reglas->load("familias.xsl");

   $datos = new DOMDocument();
   $datos->load("elorrieta.xml");
    /*
    Generamos un "motor" para aplicar esas reglas.
    Le cargamos las reglas de transformación
    Aplicamos dichas reglas al documento
    */
   $proc = new XSLTProcessor();
   $proc->importStylesheet($reglas);
   /*$proc->setParameter('','id_familia',$_GET['id_familia']);  */
   echo $proc->transformToXML($datos);

?>