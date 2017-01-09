<?php

require_once("classes/Start.php");
require_once("classes/MPA.class.php");

$MyClass    = new MPA($MessageLog, false);
$ResultSet  = $MyClass->GetRecordList($db);

?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>CGPA - Khyber Pakhtunkhwa Legislators' Performance Scorecard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="libs/font-awesome/4.5.0/css/font-awesome.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="libs/ionicons/2.0.1/css/ionicons.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="dist/css/skins/_all-skins.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="libs/datatables/css/dataTables.bootstrap.css">
</head>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="skin-cgpa layout-top-nav">
<div class="wrapper">

  <header class="main-header">
    <nav class="navbar navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <a href="index.html" class="navbar-brand"><b>CGPA</b> Website</a>
        </div>

        <!-- Navbar Right Menu -->
        <div class="navbar-custom-menu">
          <ul class="nav navbar-nav">
            <!-- Messages: style can be found in dropdown.less-->
            <li class="fa messages-menu">
              <!-- Menu toggle button -->
              <a href="#">
                <i class="fa fa-home"></i>
              </a>
            </li>
          </ul>
        </div>
        <!-- /.navbar-custom-menu -->
      </div>
    </nav>
  </header>
  <!-- Full Width Column -->
  <div class="content-wrapper">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          <div class="info-box bg-aqua">
            <span class="info-box-icon"><i class="fa fa-legal"></i></span>
            <div class="info-box-content">
              <h3>Priviledge Motion Scorecard</h3>
              <div class="progress">
                <div class="progress-bar" style="width: 100%"></div>
              </div>
              <span class="progress-description">
                This page shows the number of adjourment motions by each legislators. Feel free to sort and filter data however you may choose.
              </span>
            </div>
            <!-- /.info-box-content -->
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Adjournment Motion Scores</h3>
            </div>
            <div class="box-body">
              <div id="scoreTable_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
                <div class="row">
                  <div class="col-sm-12">
                    <table id="scoreTable" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="scoreTable_info">
                      <thead>
                        <tr role="row">
                          <th class="sorting_asc" tabindex="0" aria-controls="scoreTable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 196px;">
                            MPA Name
                          </th>
                          <th class="sorting" tabindex="0" aria-controls="scoreTable" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 243px;">
                            Political Party
                          </th>
                          <th class="sorting" tabindex="0" aria-controls="scoreTable" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 214px;">
                            Constituency
                          </th>
                          <th class="sorting" tabindex="0" aria-controls="scoreTable" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" style="width: 168px;">
                            Adjournment Motions
                          </th>
                          <th class="sorting" tabindex="0" aria-controls="scoreTable" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" style="width: 168px;">
                            Rank
                          </th>
                        </tr>
                    </thead>
                    <tbody>
<?php
                      Utils::HTMLForTable($MessageLog, $ResultSet, array("mpaName", "plpPoliticalPartyID", "cntConstituencyID", "AdjournmentMotions", "ARank"), array("even", "odd"));
?>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
    </div>
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="container">
      <div class="pull-right hidden-xs">
        All rights reserved.
      </div>
      Copyright &copy; 2014-2016 CGPA.
    </div>
    <!-- /.container -->
  </footer>
</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="libs/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="libs/datatables/js/jquery.dataTables.min.js"></script>
<script src="libs/datatables/js/dataTables.bootstrap.min.js"></script>
<!-- page script -->
<script>
  $(function () {
    $('#scoreTable').DataTable({
      "paging": true,
      "lengthChange": true,
      "searching": true,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "order": [[ 4, "asc" ]],
      "lengthMenu": [ 10, 25, 50, 75, 100, 150, 250, 500 ]
    });
  });
</script>

</body>
</html>
