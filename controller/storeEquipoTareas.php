<?php
	
	require'conexion.php';
	session_start();

	$tareas = $_POST['tareas'];
	$equipo = $_POST['equipo'];
	$user = $_SESSION['user_id'];
	$mes = $_POST['mes'];
	$date = $_POST['fecha'];
	$estado = $_POST['estadoEquipo'];
	

	$detalle = $_POST['observacion'];
	$age = date('Y');
	$create_at = date("d/m/y H:i a");
	$eti = rand(1,10000);

	for($i=0; $i<count($_FILES['foto']['name']); $i++)
	{
		$dir_subida = "../images/equipos/";
		$archivo_subido = $dir_subida.basename($_FILES['foto']['name'][$i]);
		move_uploaded_file($_FILES['foto']['tmp_name'][$i], $archivo_subido);

		$save_images = $db->query("INSERT INTO equipo_fotos VALUES(0,'$archivo_subido',$eti)") or die('error'.mysqli_errno($db));
	}


	$saveInforme = $db->query("INSERT INTO equipo_tareas_informe VALUES(0,'$user','$date','$mes','$estado','$detalle','$age','$eti','$create_at')")or die('error'.mysqli_errno($db));


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