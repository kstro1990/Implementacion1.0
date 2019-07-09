<?php 

//var_dump ($_POST);

include "../class/conexion.php";
$clsConexion = new clsConexion();
$conec = $clsConexion->conectar();
$empresa = $_POST['empresa'];
$nombre = $_POST['nombre'];
$email = $_POST['email'];
$ext = $_POST['extension'];
$roll = $_POST['id_roll'];
//$_POST['empresa'],$_POST['nombre'],$_POST['email'],$_POST['extension'],$_POST['id_roll']
$sql = "INSERT INTO tb_colaboradores( Empresa, nombre, email, extension, id_roll) VALUES   ('$empresa', '$nombre', '$email','$ext','$roll')";
$respuesta=$conec->query($sql);
echo $sql;
?>