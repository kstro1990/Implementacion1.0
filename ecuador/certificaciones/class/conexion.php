<?php

    class clsConexion{

		public function conectar(){

		    $user = "root";
		    $pass = "";
		    $server = "localhost";
		    $dataBase = "integraciones_db";
		    $con = mysqli_connect($server, $user, $pass) or die("Ocurrió un error al conectar a la base de datos".mysqli_error());
            mysqli_select_db($con, $dataBase);

            /* comprueba la conexión */
            if (mysqli_connect_errno()) {
                printf("Connect failed: %s\n", mysqli_connect_error());
                exit();
            }
		    return $con;
        }
	}
?>
	