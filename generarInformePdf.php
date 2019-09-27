<?php

	require_once __DIR__ . '/vendor/autoload.php';

	include'controller/conexion.php';

	$eti = $_POST['eti'];

	$informe = $db->query("SELECT equipo_tareas_informe.eti as eti_id,equipo_tareas_informe.fecha as eti_fecha, meses.nombre as mes_nombre, equipos.nombre as equipo_nombre, equipo_tareas_informe.estado as eti_estado, usuarios.nombres as user_name, usuarios.apellidos as user_lastname  FROM equipo_tareas_informe INNER JOIN meses ON equipo_tareas_informe.mes_id = meses.id INNER JOIN equipo_tareas ON equipo_tareas_informe.eti=equipo_tareas.eti INNER JOIN equipos ON equipo_tareas.equipo_id=equipos.id INNER JOIN usuarios ON equipo_tareas_informe.user_id=usuarios.id  WHERE equipo_tareas_informe.eti='$eti'")or die('error'.mysqli_errno($db));

	$dataInforme = mysqli_fetch_array($informe);


	$contenido = "<table>
	<tr>
		<td><h1>INFORME #ETI ".$dataInforme['eti_id']."</h1></td>
	</tr>
	<tr>
		<td></td>
	</tr>
	<tr>
		<td>Fecha de realizacion:</td>
		<td>".$dataInforme['eti_fecha']."</td>
	</tr>
	<tr>
		<td>Mes:</td>
		<td>".$dataInforme['mes_nombre']."</td>
	</tr>
	<tr>
		<td>Equipo:</td>
		<td>".$dataInforme['equipo_nombre']."</td>
	</tr>
	<tr>
		<td>Estado:</td>
		<td>".$dataInforme['eti_estado']."</td>
	</tr>
	<tr>
		<td>Responsable:</td>
		<td>".$dataInforme['user_name']." ".$dataInforme['user_lastname']."</td>
	</tr>
	<tr>
		<td>Actividades:</td>
		<td></td>
	</tr>
	<tr>
		<td>Observaciones:</td>
		<td></td>
	</tr>

</table>";

	$mpdf = new \Mpdf\Mpdf();
	$mpdf->WriteHTML($contenido);
	$mpdf->Output();

?>

