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
      <div class="container-fluid">
        <div class="row">
          <div class="col-sm-12">
            <?php include('navigation.php'); ?>
          </div>
        </div>
      </div>
    </section>
    <br>
    <section>
      <div class="container-fluid">
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
                      <th>ETI</th>
                      <th>ID</th>
                      <th>MES</th>
                      <th>EQUIPO</th>
                      <th>FOTO</th>
                      <th><i class="fas fa-exclamation-triangle"></i> ESTADO</th>
                      <th>RESP.</th>
                      <th>FECHA</th>
                      <th></th>
                    </tr>
                    <?php
                      $eti = $db->query("SELECT DISTINCT equipo_tareas.eti, equipo_tareas_informe.id as eti_id, equipo_tareas_informe.eti as idEti, meses.nombre as mes_nombre, equipos.nombre as equipo_nombre, equipos.foto as equipo_foto, equipo_tareas_informe.estado as eti_estado, usuarios.nombres as user_name, usuarios.apellidos as user_lastname, equipo_tareas_informe.fecha as eti_fecha  FROM equipo_tareas_informe INNER JOIN meses ON equipo_tareas_informe.mes_id = meses.id INNER JOIN equipo_tareas ON equipo_tareas_informe.eti = equipo_tareas.eti INNER JOIN equipos ON equipo_tareas.equipo_id = equipos.id INNER JOIN usuarios ON equipo_tareas_informe.user_id = usuarios.id  WHERE age = 2019")or die('error'.mysqli_errno($db));

                      while($fila = mysqli_fetch_array($eti))
                      {
                        echo "<tr>
                                <td>".$fila['idEti']."</td>
                                <td>".$fila['eti_id']."</td>
                                <td>".$fila['mes_nombre']."</td>
                                <td>".$fila['equipo_nombre']."</td>
                                <td><img width='50' src='".str_replace('../', '', $fila['equipo_foto'])."'></td>
                                <td>".$fila['eti_estado']."</td>
                                <td>".$fila['user_name']." ".$fila['user_lastname']."</td>
                                <td>".$fila['eti_fecha']."</td>
                                <td><button data-toggle='modal' data-target='#exampleModal' class='btn btn-info btn_showInfomrme'><i class='far fa-file-alt'></i></button></td>
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
    <script src="js/detallesInforme.js"></script>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Detalles del Informe</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="generarInformePdf.php" method="POST">
          <div id="shoInforme"></div>
      </div>
      <div class="modal-footer">
          <button class="btn btn-danger"><i class="fas fa-download"></i> Descargar Informe</button>
        </form>
      </div>
    </div>
  </div>
</div>
  </body>
</html>