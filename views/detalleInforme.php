<?php
	
	include '../controller/conexion.php';

	$eti = $_GET['eti'];


	$informe = $db->query("SELECT imagen, eti, observacion FROM equipo_tareas_informe WHERE eti ='$eti' ") or die('error'.mysqli_errno($db));
	$verInforme = mysqli_fetch_array($informe);

	$tareas = $db->query("SELECT procesos.nombre as proceso_nombre FROM equipo_tareas INNER JOIN procesos ON equipo_tareas.proceso_id=procesos.id  WHERE eti ='$eti' ") or die('error'.mysqli_errno($db));

	

?>


<div class="card">
  <img src="<?php  echo str_replace('../', '', $verInforme['imagen'])  ?>" class="card-img-top">
  <div class="card-body">
    <h5 class="card-title">Observacion</h5>
    <input type="hidden" name="eti" value="<?php echo $eti ?>">
    <p class="card-text"><?php echo $verInforme['observacion'] ?></p>
  </div>
  <ul class="list-group list-group-flush">
  	<?php
		while($fila = mysqli_fetch_array($tareas)){
			echo "<li class='list-group-item'><i class='fas fa-check'></i> ".$fila['proceso_nombre']."</li>";
		}
	?>
  </ul>
</div>
