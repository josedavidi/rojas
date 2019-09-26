<?php
	
	include'../controller/conexion.php';

	$mes = $_GET['mesId'];
	$equipo = $_GET['equipoId'];

	$tareas = $db->query("SELECT agenda_procesos.id as ap_id, procesos.nombre as proceso_nombre FROM agenda_procesos INNER JOIN procesos ON agenda_procesos.proceso_id=procesos.id WHERE equipo_id='$equipo' AND mes_id='$mes'") or die(mysqli_errno($db));

?>

<select class="js-example-basic-multiple" name="tareas[]" multiple="multiple" style="width: 100%">
	<option value="#">Selecciona las tareas</option>
	<?php
		while($fila = mysqli_fetch_array($tareas))
		{
			echo "<option value='".$fila['ap_id']."'>".$fila['proceso_nombre']."</option>";
		}
	?>
</select>

<script>
	$(document).ready(function() {
	    $('.js-example-basic-multiple').select2();
	});
</script>