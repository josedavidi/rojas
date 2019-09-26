<?php
  session_start();
  include('validateAccess.php');

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
                      <th>ESTADO</th>
                      <th>RESP.</th>
                      <th>FECHA</th>
                      <th></th>
                    </tr>
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