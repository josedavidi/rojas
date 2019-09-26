<?php
  session_start();
  include 'validateAccess.php';
  include 'controller/conexion.php';

?>
<!doctype html>
<html lang="en">
  <head>
    <?php include'includes/head.php' ?>
    <title>ROJAS INGENIERIA</title>
  </head>
  <body>
    <section>
      <div class="container">
        <div class="row">
          <div class="col-sm-12">
            <?php include('navigation.php'); ?>
          </div>
        </div>
      </div>
    </section>
    <br>
    <section>
      <div class="container">
        <div class="row">
          <div class="col-sm-12">
            <div class="card">
              <div class="card-header">
                <div class="row">
                  <div class="col-sm-9">
                    <h5>Informes</h5>
                  </div>
                  <div class="col-sm-3">
                    <form>
                      <select class="custom-select" name="age" id="age">
                        <option value="#">Seleccione Periodo</option>
                        <option value="2019">2019</option>
                        <option value="2020">2020</option>
                        <option value="2021">2021</option>
                      </select>
                    </form>
                  </div>
                </div>
              </div>
              <div class="card-body">
                <table class="table table-striped">
                  <thead>
                    <tr>
                      <th>ID</th>
                      <th>MES</th>
                      <th>EQUIPO</th>
                      <th><i class="fas fa-exclamation-triangle"></i> ESTADO</th>
                      <th>RESP.</th>
                      <th>FECHA</th>
                      <th></th>
                    </tr>
                    <?php
                      $eti = $db->query("SELECT DISTINCT equipo_tareas.eti, equipo_tareas_informe.id as eti_id, meses.nombre as mes_nombre, equipos.nombre as equipo_nombre, equipo_tareas_informe.estado as eti_estado, usuarios.nombres as user_name, usuarios.apellidos as user_lastname, equipo_tareas_informe.fecha as eti_fecha  FROM equipo_tareas_informe INNER JOIN meses ON equipo_tareas_informe.mes_id = meses.id INNER JOIN equipo_tareas ON equipo_tareas_informe.eti = equipo_tareas.eti INNER JOIN equipos ON equipo_tareas.equipo_id = equipos.id INNER JOIN usuarios ON equipo_tareas_informe.user_id = usuarios.id  WHERE age = 2019")or die('error'.mysqli_errno($db));

                      while($fila = mysqli_fetch_array($eti))
                      {
                        echo "<tr>
                                <td>".$fila['eti_id']."</td>
                                <td>".$fila['mes_nombre']."</td>
                                <td>".$fila['equipo_nombre']."</td>
                                <td>".$fila['eti_estado']."</td>
                                <td>".$fila['user_name']." ".$fila['user_lastname']."</td>
                                <td>".$fila['eti_fecha']."</td>
                              </tr>";
                      }
                    ?>
                  </thead>
                </table>
              </div>
              <div class="card-footer text-muted">
                2 days ago
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <?php include'includes/scripts.php' ?>
  </body>
</html>