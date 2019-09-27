<?php
	
	require'conexion.php';
	session_start();

	$tareas = $_POST['tareas'];
	$equipo = $_POST['equipo'];
	$user = $_SESSION['user_id'];
	$mes = $_POST['mes'];
	$date = $_POST['fecha'];
	$estado = $_POST['estadoEquipo'];

	$dir_subida = "../images/equipos/";
	$archivo_subido = $dir_subida.basename($_FILES['foto']['name']);
	move_uploaded_file($_FILES['foto']['tmp_name'], $archivo_subido);
	

	$detalle = $_POST['observacion'];
	$age = date('Y');
	$create_at = date("d/m/y H:i a");
	$eti = rand(1,10000);

	$saveInforme = $db->query("INSERT INTO equipo_tareas_informe VALUES(0,'$user','$date','$mes','$estado','$archivo_subido','$detalle','$age','$eti','$create_at')")or die('error'.mysqli_errno($db));


	foreach($tareas as $tarea)
	{
		$saveTareas = $db->query("INSERT INTO equipo_tareas VALUES(0,'$equipo','$tarea',$eti)")or die('error'.mysqli_errno($db));
	}

	if($saveInforme)
	{
		echo "<script>alert('Tareas registradas exitosamente');location.href='../tareas.php'</script>";
	}

	mysqli_close($db);
	

?>