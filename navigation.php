<?php
  if($_SESSION['rol']=='admin')
  {
    $menu = 'block';
  }else{
    $menu = 'none';
  }
?>
<nav class="sticky-top navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="home.php">ROJAS <strong>INGENIERIA</strong></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item" style="display: <?php echo $menu ?>">
        <a class="nav-link" href="schedule_process.php"><i class="far fa-calendar-plus"></i> Agendar Procesos</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="tareas.php"><i class="far fa-file-alt"></i> Tareas</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="informes.php"><i class="far fa-folder"></i> Informes</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <a href="salir.php" class="btn btn-outline-danger my-2 my-sm-0"><i class="fas fa-power-off"></i></a>
    </form>
  </div>
</nav>