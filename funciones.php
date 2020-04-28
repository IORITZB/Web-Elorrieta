<?php

define('SERVIDOR', "localhost");
define('USUARIO', 'root');
define('CLAVE', '');
define('BBDD', "web_elorrieta");
/**
 * AS always, no te olvides de poner los datos correctos de base de datos y usuario
 */


 /**
  * Funcion de siempre, para rellenar un div o un espacio con nuestra tabla, listados...
  */
function listado_ciclos($codigo)
{
    @$conexion = mysqli_connect(SERVIDOR, USUARIO, CLAVE, BBDD) or die("<p>Error de Conexión " . mysqli_connect_errno() . ": " . mysqli_connect_error() . "</p>\n");
    mysqli_set_charset($conexion, 'utf8');
    // --------------------------------
    $sql = "SELECT * FROM `Ciclos` WHERE `tipo_ciclo` = '$codigo';";
    @$resultado = mysqli_query($conexion, $sql) or
        die("<p>Error: " . mysqli_errno($conexion) . ": " . mysqli_error($conexion) . "</p>");

    print "<table class='clase'>\n";
    print "<th>Nombre</th>";
    while ($fila = mysqli_fetch_assoc($resultado)) {
        print "<tr><td id='$fila[cod_ciclo]'><a href='pagina_ciclo.php?codigo=$fila[cod_ciclo]'>$fila[nom_ciclo]</a></td></tr>\n";
    }
    print "</table>\n";
    mysqli_free_result($resultado);
    mysqli_close($conexion);
}


/**
 * ******PASO 1******** 
 * ******Recogemos los datos en un array***********
 * 
 */

function datos_ciclo($codigo)
{
    // if (!preg_match('/^[0-9]+$/', $codigo)) {//esto es si los codigos son numericos
    //     print "ERROR en el código";
    //     return array();//un array vacio, porque no ha funcionao, como si no devolvemos na
    // }

    @$conexion = mysqli_connect(SERVIDOR, USUARIO, CLAVE, BBDD) or die("<p>Error de Conexión " . mysqli_connect_errno() . ": " . mysqli_connect_error() . "</p>\n");
    mysqli_set_charset($conexion, 'utf8');
    // --------------------------------
    $sql = "SELECT * FROM `Ciclos` WHERE `tipo_ciclo` = '$codigo';";

    //COMO NO QUEREMOS QUE LO IMPRIMA NO LO GUARDAMOS EN VARIABLE; EL RESULTADO DEBE SER TRUE O FALSE
    //TAMPOCO SE LIBERA MEMORIA PORQUE NO SE HA CREADO LA VARIABLE
    $resultado = mysqli_query($conexion, $sql) or
        die("<p>Error: " . mysqli_errno($conexion) . ": " . mysqli_error($conexion) . "</p>");

    /**La query devolverá un registro o cero */
    $fila = mysqli_fetch_assoc($resultado);
    print_r($fila,true);
    mysqli_free_result($resultado);

    mysqli_close($conexion);

    /**
     * ESTO DEVUELVE UNA FILA ENTERA DE LA TABLA, LA CORRESPONDIENTE A LA QUE BUSCAMOS POR CODIGO
     */
    return $fila;
}



?>