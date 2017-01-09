<?php

require_once("classes/Start.php");
require_once("classes/MPA.class.php");

$AttendancePercent  = 0;
$MyClass            = new MPA($MessageLog, false);

if( $MyClass->GetRecordByName($MessageLog, $db) )
{
  $AttendancePercent = round(100 * (($MyClass->m_txtTotalPresents + $MyClass->m_txtTotalApplications) / ($MyClass->m_txtTotalPresents + $MyClass->m_txtTotalApplications + $MyClass->m_txtTotalAbsents)));
}

?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>CGPA - Legislator's Performance Check</title>
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
  <![endif]-->
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
        <div class="col-md-12">

          <div class="box box-widget widget-page">
            <!-- Add the bg color to the header using any of the bg-* classes -->
            <div class="widget-page-header bg-gray-light">
              <h3 class="widget-page-title">Legislator's Performance Check</h3>
              <h5 class="widget-page-desc">See how the legislator has done during the tenure</h5>
            </div>
          </div>
        </div>
        <!-- /.col -->
      </div>
      <div class="row">
        <div class="col-md-12">

          <div class="box box-widget widget-user">
            <!-- Add the bg color to the header using any of the bg-* classes -->
            <div class="widget-user-header bg-gray-light">
              <h3 class="widget-user-username"><?php echo $MyClass->m_txtName ?></h3>
              <h5 class="widget-user-desc"><?php echo $MyClass->m_txtDescription ?></h5>
            </div>
            <div class="widget-user-image">
              <img src="img/legislator/<?php echo $MyClass->m_txtImageName ?>" alt="<?php echo $MyClass->m_txtName ?>">
            </div>
            <div class="box-footer">
              <div class="row">
                <div class="col-sm-4 border-right">
                  <div class="description-block">
                    <img src="img/party/<?php echo $MyClass->m_txtPartyImageName ?>" alt="<?php echo $MyClass->m_txtPartyLongName ?>">
                    <span class="description-text"><?php echo $MyClass->m_txtPartyLongName ?></span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
                <div class="col-sm-4 border-right">
                  <div class="description-block">
                    <span class="description-text"><?php echo $MyClass->m_txtConstituencyID ?></span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
                <div class="col-sm-4">
                  <div class="description-block">
                    <span class="description-text">SOMETHING HERE</span>
                    <br />
                    <span class="description-text">DATE HERE</span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
          </div>

        </div>
        <!-- /.col -->
      </div>

      <div class="row">
        <div class="col-md-4 col-sm-8 col-xs-12">
          <div class="info-box bg-aqua">
            <span class="info-box-icon"><i class="fa fa-calendar"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Attendance Record</span>
              <span class="info-box-number">
<?php
                echo ($MyClass->m_txtTotalPresents + $MyClass->m_txtTotalApplications)
                      . "/"
                      . ($MyClass->m_txtTotalPresents + $MyClass->m_txtTotalApplications + $MyClass->m_txtTotalAbsents)
?>
              </span>
              <div class="progress">
                <div class="progress-bar" style="width: <?php echo $AttendancePercent; ?>%"></div>
              </div>
                  <span class="progress-description">
                    <?php echo $AttendancePercent; ?>% Percent
                  </span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
          <div class="info-box">
              <canvas id="pieChart">
              </canvas>
              <div style="padding-bottom: 10px; padding-top: 15px;">
                <ul style="list-style: none;">
                  <li><span style="background-color: #0099c1; padding-left: 35px; margin-right: 20px;"></span> Presents</li>
                  <li><span style="background-color: #e34040; padding-left: 35px; margin-right: 20px;"></span> Absents</li>
                  <li><span style="background-color: #d2d6de; padding-left: 35px; margin-right: 20px;"></span> Applications</li>
                </ul>
              </div>
          </div>
        </div>
        <!-- /.col -->
        <div class="col-md-4 col-sm-8 col-xs-12">
          <div class="info-box bg-green">
            <span class="info-box-icon"><i class="fa fa-list"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Resolution Participation</span>
              <span class="info-box-number"><?php echo $MyClass->m_txtResolutions ?></span>

              <div class="progress">
                <div class="progress-bar" style="width: 100%"></div>
              </div>
                  <span class="progress-description">
                    Rank #<?php echo $MyClass->m_txtResolutionsRank ?>
                  </span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <div class="info-box bg-aqua">
            <span class="info-box-icon"><i class="fa fa-institution"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Bills Participation</span>
              <span class="info-box-number"><?php echo $MyClass->m_txtBills ?></span>

              <div class="progress">
                <div class="progress-bar" style="width: 100%"></div>
              </div>
                  <span class="progress-description">
                    Rank #<?php echo $MyClass->m_txtBillsRank ?>
                  </span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <div class="info-box bg-red-active">
            <span class="info-box-icon"><i class="fa fa-bell-o"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Call Attention Notice Participation</span>
              <span class="info-box-number"><?php echo $MyClass->m_txtCallAttentionNotices ?></span>

              <div class="progress">
                <div class="progress-bar" style="width: 100%"></div>
              </div>
                  <span class="progress-description">
                    Rank #<?php echo $MyClass->m_txtCallAttentionNoticesRank ?>
                  </span>
            </div>
            <!-- /.info-box-content -->
         </div>
        </div>
        <!-- /.col -->
        <div class="col-md-4 col-sm-8 col-xs-12">
          <div class="info-box bg-yellow">
            <span class="info-box-icon"><i class="fa fa-comments-o"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Question Participation</span>
              <span class="info-box-number"><?php echo $MyClass->m_txtQuestions ?></span>

              <div class="progress">
                <div class="progress-bar" style="width: 100%"></div>
              </div>
                  <span class="progress-description">
                    Rank #<?php echo $MyClass->m_txtQuestionsRank ?>
                  </span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <div class="info-box bg-green">
            <span class="info-box-icon"><i class="fa fa-bolt"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Privilege Motion Participation</span>
              <span class="info-box-number"><?php echo $MyClass->m_txtPrivilegeMotions ?></span>

              <div class="progress">
                <div class="progress-bar" style="width: 100%"></div>
              </div>
                  <span class="progress-description">
                    Rank #<?php echo $MyClass->m_txtPrivilegeMotionsRank ?>
                  </span>
            </div>
            <!-- /.info-box-content -->
         </div>
          <div class="info-box bg-aqua">
            <span class="info-box-icon"><i class="fa fa-legal"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Adjournment Motion Participation</span>
              <span class="info-box-number"><?php echo $MyClass->m_txtAdjournmentMotions ?></span>

              <div class="progress">
                <div class="progress-bar" style="width: 100%"></div>
              </div>
                  <span class="progress-description">
                    Rank #<?php echo $MyClass->m_txtAdjournmentMotionsRank ?>
                  </span>
            </div>
            <!-- /.info-box-content -->
         </div>
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

<script src="libs/chartjs/Chart.min.js"></script>
<!-- page script -->
<script>
  $(function () {
    /* ChartJS
     */

    //-------------
    //- GLOBALS -
    //-------------
    // Common settings for all graphs on this page
    var GRAPH_HEIGHT = 170;

    //-------------
    //- PIE CHART -
    //-------------
    // Get context with jQuery - using jQuery's .get() method.
    var pieChartCanvas = $("#pieChart").get(0).getContext("2d");
    pieChartCanvas.canvas.height = GRAPH_HEIGHT;

<?php echo ($MyClass->m_txtTotalPresents + $MyClass->m_txtTotalApplications)
                      . "/"
                      . ($MyClass->m_txtTotalPresents + $MyClass->m_txtTotalApplications + $MyClass->m_txtTotalAbsents)
?>

    var pieChart = new Chart(pieChartCanvas);
    var PieData = [
      {
        value: <?php echo ($MyClass->m_txtTotalAbsents) ?>,
        color: "#e34040",
        highlight: "#e34040",
        label: "Absent"
      },
      {
        value: <?php echo ($MyClass->m_txtTotalPresents) ?>,
        color: "#0099c1",
        highlight: "#0099c1",
        label: "Present",
      },
      {
        value: <?php echo ($MyClass->m_txtTotalApplications) ?>,
        color: "#d2d6de",
        highlight: "#d2d6de",
        label: "Applications"
      }
    ];

    var pieOptions = {
      //Boolean - Whether we should show a stroke on each segment
      segmentShowStroke: true,
      //String - The colour of each segment stroke
      segmentStrokeColor: "#fff",
      //Number - The width of each segment stroke
      segmentStrokeWidth: 2,
      //Number - The percentage of the chart that we cut out of the middle
      percentageInnerCutout: 50, // This is 0 for Pie charts
      //Number - Amount of animation steps
      animationSteps: 100,
      //String - Animation easing effect
      animationEasing: "easeOutBounce",
      //Boolean - Whether we animate the rotation of the Doughnut
      animateRotate: true,
      //Boolean - Whether we animate scaling the Doughnut from the centre
      animateScale: false,
      //Boolean - whether to make the chart responsive to window resizing
      responsive: true,
      // Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
      maintainAspectRatio: true,
      // Tooltip Template
      tooltipTemplate: "<%= value %>",
      //String - A legend template
      legendTemplate: "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<segments.length; i++){%><li><span style=\"background-color:<%=segments[i].fillColor%>\"></span><%if(segments[i].label){%><%=segments[i].label%><%}%></li><%}%></ul>",

      onAnimationComplete: function()
      {
          this.showTooltip(this.segments, true);
      },
  
      tooltipEvents: [],
  
      //showTooltips: true,
      tooltipFillColor: "rgba(0,0,0,0.6)",
    };
    //Create pie or douhnut chart
    // You can switch between pie and douhnut using the method below.
    pieChart.Doughnut(PieData, pieOptions);
  });
</script>
</body>
</html>
