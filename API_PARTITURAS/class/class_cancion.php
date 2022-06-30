<?php
include("conexion.php");
$bd = new BaseDatos();
$conexion = $bd->conectar();
class Cancion {
    
    private $codCancion;
    private $codInstrumento;
    private $grupo;
    private $nombre;
    private $url;
    

    public function __construct($codCancion, $grupo, $nombre, $url, $codInstrumento){
        $this->codCancion=$codCancion;
        $this->grupo=$grupo;
        $this->nombre=$nombre;
        $this->url=$url;
        $this->codInstrumento=$codInstrumento;   
    } 

    

    public static function mostrarCanciones() {
        global $bd;
        $data=[];
        $sql="select * from cancion";
        $resultado=$bd->seleccionar($sql);

        while($canciones = mysqli_fetch_assoc($resultado)) {
            $data[]=$canciones;
        }
        $var = json_encode($data);
        echo $var;
    }
    public static function mostrarXInstrumento($codInstrumento) {
        global $bd;
        $data=[];
        $sql="select * from cancion where codInstrumento =".$codInstrumento;
        $resultado=$bd->seleccionar($sql);

        while($canciones = mysqli_fetch_assoc($resultado)) {
            $data[]=$canciones;
        }
        $var = json_encode($data);
        echo $var;
    }

    public function insertarCancion() {
        global $bd;
        $sql = "INSERT INTO cancion (nombre, grupo, url, codInstrumento) VALUES ('$this->nombre','$this->grupo','$this->url','$this->codInstrumento')";
        $bd->insertar($sql);
    }


    public static function eliminarCancion($codCancion) {
        global $bd;
        $sql ="DELETE FROM cancion where codCancion=".$codCancion;
        $resultado=$bd->eliminar($sql);

    }

    public static function modificarCancionUrl($codCancion, $url) {
        global $bd;
        $sql="UPDATE cancion SET url='".$url."' WHERE codCancion='".$codCancion."'";
        $resultado=$bd->update($sql);
    }
}

