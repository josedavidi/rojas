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
    <?php include'includes/scripts.php' ?>
  </body>
</html>