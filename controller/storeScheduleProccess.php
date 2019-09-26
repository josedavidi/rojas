<?php
		
	include'conexion.php';

	 $mes = $_POST['mes'];
	 $equipo = $_POST['equipo'];
	 $procesos = $_POST['procesos'];

	 foreach($procesos as $procesos)
	 {
	 	$storeAgendaProcesos = $db->query("INSERT INTO agenda_procesos VALUES(0,'$equipo','$mes','$procesos')");
	 }

	 echo "<script>alert('Los procesos han sido agendados');location.href='../schedule_process.php'</script>";

	 mysqli_close($db);

?>