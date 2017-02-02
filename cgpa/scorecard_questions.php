<?php

require_once("classes/Start.php");
require_once("classes/MPA.class.php");

$MyClass    = new MPA($MessageLog, false);
$ResultSet  = $MyClass->GetRecordList($db);

$PageTitle = "Questions Scorecard";
$OrderColumn = 4;

require_once("includes/header.php");

?>

  <!-- Full Width Column -->
  <div class="content-wrapper">
    <div class="container bg-gray-light">
      <div class="row bg-gray-light">
        <div class="col-md-12">
            &nbsp;
        </div>
      </div>
      <div class="row">
        <div class="col-xs-12">
          <div class="info-box bg-yellow">
            <span class="info-box-icon"><i class="fa fa-comments-o"></i></span>
            <div class="info-box-content">
              <h3><?php echo $PageTitle; ?></h3>
            </div>
            <!-- /.info-box-content -->
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-xs-12">
          <h4 class="text-uppercase">
            Definition
          </h4>
          <p>
            In the assembly, members may ask different questions of public importance in written relating to the
            functions and working of different departments, which is defined as "question".
          </p>
          <h4 class="text-uppercase">
            Methodology
          </h4>
          <p>
            The data for question scores was analysed by aggregating all available data on questions asked and
            calculating the percentage of each individual legislator to total questions asked. This gives a perfect
            picture of how much each individual MPA has contributed to the total questions asked.
          </p>
          <br />
          <h5 class="text-uppercase">Note:</h5>
          <p>
            The data relates to the period 29th May, 2013 to 30th June, 2016.
          </p>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12">
            &nbsp;
        </div>
      </div>
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header bg-gray disabled">
              <h3 class="box-title">Questions Scores</h3>
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
                            Questions Asked
                          </th>
                          <th class="sorting" tabindex="0" aria-controls="scoreTable" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" style="width: 168px;">
                            Rank
                          </th>
                        </tr>
                    </thead>
                    <tbody>
<?php
                      Utils::HTMLForTable($MessageLog, $ResultSet, array("mpaName", "plpPoliticalPartyID", "cntConstituencyID", "Questions", "QRank"), array("even", "odd"));
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

<?php

require_once("includes/footer_table_page.php");

?>
