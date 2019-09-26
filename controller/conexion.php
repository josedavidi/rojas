<?php
	
	$server = 'localhost';
	$user = 'root';
	$pass= '';
	$db = 'rojas';

	$db = mysqli_connect($server,$user,$pass,$db) or die('Error en el Servidor'.mysqli_errno($db));

?>