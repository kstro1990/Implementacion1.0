<!DOCTYPE html>
<html lang="es">
<?php include_once 'templates/head.html';  ?>

<body class=" ">
  <div class="wrapper ">
             <?php       include_once 'templates/menuVar.html';     ?>
    <div class="main-panel">
      <!-- Navbar -->
          <?php include_once 'templates/navar.html';  ?>
      <!-- End Navbar -->
    </div>
    vbnm,.dokfpsdlfk
    <div class="content">
      <div class="row">
        <div class="col-12">
          <div class="card card-chart">
          <div class="card-header ">
            <div class="row">
              <div class="col-sm-6 text-left">
                  <h5 class="card-category">Total integraciones</h5>
                  <h2 class="card-title">Por Mes </h2>
              </div>
              <div class="col-sm-6">
                  <div class="btn-group btn-group-toggle float-right" data-toggle="buttons">
                      <label class="btn btn-sm btn-primary btn-simple active" id="0">
                      <input type="radio" name="options" autocomplete="off" checked=""> Accounts
                      </label>
                      <label class="btn btn-sm btn-primary btn-simple " id="1">
                      <input type="radio" name="options" autocomplete="off"> Purchases
                      </label>
                      <label class="btn btn-sm btn-primary btn-simple " id="2">
                      <input type="radio" name="options" autocomplete="off"> Sessions
                      </label>
                  </div>
              </div>
              </div>
            </div>            
          </div>
        </div>
      </div>
    </div>

    
    </div>
  </div>



  <!-- pie de pagina  -->
  <footer class="footer">
    <div class="container-fluid">
      <nav>
        <ul>
          <li>
            <a href="#">
              Kstro Web
            </a>
          </li>
        </ul>
      </nav>
      <div class="copyright float-right">
        ©
        <script>
          document.write(new Date().getFullYear())
        </script> echo con <i class="tim-icons icon-heart-2"></i> por
        <a href="https://www.creative-tim.com" target="_blank">Luis Castro </a> for a better web.
      </div>
  </footer>
  <!--   scripts   -->
  <?php  include_once 'templates/scripts.html'; ?>
</body>
</html>