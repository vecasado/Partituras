<?php
header("Content-Type: application/json");
include_once("../class/class_cancion.php");
$_POST=json_decode(file_get_contents('php://input'),true);
switch($_SERVER['REQUEST_METHOD']) {
    /**Metodo GET: Consultar información */
    case 'GET':   
            //Mandando codInstrumento nos devuelve las canciones de un instrumento en concreto
            if(isset($_GET['codInstrumento'])) {
                Cancion::mostrarXInstrumento($_GET['codInstrumento']);
            } else {//Sino devuelve la información de todas
                Cancion::mostrarCanciones();
            }
            
    break;    
    
    /**Método POST: Creamos una cancion nueva*/
    case 'POST':
        if(isset($_POST['codInstrumento']) && isset($_POST['grupo']) && isset($_POST['nombre']) && isset($_POST['url'])) {
            $cancion = new Cancion(null,$_POST['grupo'],$_POST['nombre'],$_POST['url'],$_POST['codInstrumento']);
            $cancion->insertarCancion();    
        }
    echo "Final";
    break;

    /**PATCH: Modificar un recurso existente */
    case 'PUT':
        if(isset($_GET['codCancion']) && isset($_GET['url'])) {
            Cancion::modificarCancionUrl($_GET['codCancion'],$_GET['url']);
        }
    break;

    /**DELETE: Borrar un recurso, un cancion por su codigo de cancion */
    case 'DELETE':
        if(isset($_GET['codCancion'])) {
            Cancion::eliminarCancion($_GET['codCancion']);
        } else {
            echo "no";
        }
    break;

}?>
