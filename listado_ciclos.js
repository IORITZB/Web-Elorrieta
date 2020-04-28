$(function() {
    listado_cargado();

    /**
     * PASO 1: creamos el dialogo cogiendo el div donde va a ir el boton de editar y le hacemos 
     * .dialog({
     *  AQUI LOS ATRIBUTOS DEL DIALOG
     * 
     * buttons:{ //esto es un JSON
     * "Actualizar": enviarFilaActualizar, //esta funcion esta mas abajo
     * "Cancelar": function() { $(this).dialog("close"); }
     * }
     * });
     */
    //Dialogo de editar

    $('#paso').dialog({
        autoOpen: false,
        modal: true,
        buttons: {
            "Cancelar": function() { $(this).dialog("close"); }
        }
    });
});

/**CARGAMOS EL LISTADO Q SE VA A EDITAR */
// function cargar_listado() {
//     $('#listado').load('listado_ciclos.php', listado_cargado);
// }


/**CUANDO EL LISTADO HA CARGADO */
function listado_cargado() {
    //Esconder primera columna
    // $('#listado td:first-child').hide();

    //Evento click en editar
    $('#listado').click(function() {
        var codigo = $(this).html();
        console.log(codigo);
        mostrar_fila(codigo); //al hacer click en editar buscamos el codigo que esta en el primer td de la fila clickada
        //llamamos a editar_fila(codigo)
    });
}


/**
 * Esto lo ejecuta al hacer click en editar
 * Carga lo que va a haber dentro del dialogo
 * 
 */
function mostrar_fila(codigo) {
    //Llenar el contenedor del diálogo con los datos correspondientes
    //AQUI LLAMA AL FORMULARIO QUE HEMOS CREADO; AL PASARLE EL CODIGO ESTA RELLENO EL FORMULARIO
    //CON LOS DATOS CORRESPONDIENTES A LA FILA QUE HEMOS CLICKADO
    $('#paso').load('datos_ciclos.php?codigo=' + codigo, function() {
        $('#paso').dialog("open"); //abre el dialog de editar
    })
}


/**
 * PASO FINAL 
 * 
 * Este es el boton de actualizar del dialogo
 */
function enviarFilaActualizar() {

    //Envia en un post la informacion que saca del formulario que hay dentro del dialog
    //serialize lo convierte en un array y ya
    $.post('editar_fila.php', $('#editar').find('form').serialize(), function(respuesta) {
        if (respuesta.indexOf("Error") != -1) {
            alert("ERROR");
        } else {
            //si funciona bien cierra el dialogo y recarga el listado para que salga ya con el cambio aplicado
            $('#editar').dialog("close");
            cargar_listado();
        }
    });

}