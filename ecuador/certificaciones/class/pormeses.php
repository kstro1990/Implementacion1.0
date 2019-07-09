<?php 

//include "class/conexion.php";

//$_POST['empresa'],$_POST['nombre'],$_POST['email'],$_POST['extension'],$_POST['id_roll']
//$sql = "SELECT * FROM vista_integraciones_x_mes";
//$respuesta=$conec->query($sql);
//var_dump($respuesta) ;


include "conexion.php";
$clsConexion = new clsConexion();
$conec = $clsConexion->conectar();
$sql = "SELECT * FROM vista_integraciones_x_mes";
$respuesta=$conec->query($sql);
//var_dump($respuesta) 
//$r = json_decode ();
$rawdata = array();
$i=0;
while($row = mysqli_fetch_array($respuesta))
{
    $rawdata[$i] = $row;
    $i++;
}

echo json_encode($rawdata);
?>