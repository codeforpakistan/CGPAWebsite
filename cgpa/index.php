<?php

$PageTitle = "Home";

require_once("includes/header.php");

?>
  <!-- Full Width Column -->
  <div class="content-wrapper">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="modal-open">
            <img src="img/kpk_banner.jpg">
          </div>
          <div class="box box-widget widget-page">
            <!-- Add the bg color to the header using any of the bg-* classes -->
            <div class="widget-page-header bg-gray-light">
              <h3 class="widget-page-title">Khyber Pakhtunkhwa Legislators' Performance Scorecard</h3>
              <h5 class="widget-page-desc">
                <a href="scorecard_overall.php">Overall Scores</a>
                | <a href="scorecard_attendance.php">Attendance Scores</a>
                | <a href="scorecard_resolutions.php">Resolution Scores</a>
                | <a href="scorecard_bills.php">Bills Scores</a>
                | <a href="scorecard_questions.php">Questions Scores</a>
                | <a href="scorecard_privilege.php">Privilege Motion Scores</a>
                | <a href="scorecard_adjournment.php">Adjournment Motion Scores</a>
                | <a href="scorecard_calls.php">Call Attention Notice Scores</a>
              </h5>
            </div>
          </div>
        </div>
        <!-- /.col -->
      </div>

      <div class="row">
        <div class="col-md-12">
          <div class="box box-solid callout">
            <div class="box-header with-border alert-success">
              <h3 class="box-title">About Legis.pk</h3>
            </div>
            <div class="box-body">
              <p>
                Political system in Pakistan is characterized by low transparency and weak accountability, especially in terms of
                having effective and functional accountability mechanisms that are rooted in civil society and democratic processes.
                People in electoral constituencies are generally unaware of their legal rights, and lack organizational and technical
                resources to make their representatives and governments (i.e. local, provincial and national) accountable. Furthermore,
                they are not aware of the role and responsibilities of the legislators, therefore the citizens often vote based on
                issues which don't really fall in the legislators ambit, like construction of bridges, roads, and water channels. On
                the other hand with individuals lacking the capacity to making elected representatives accountable, these representatives
                then tend to stray from their core responsibilities.
              </p>
              <p>
                Furthermore, in Pakistan, MPAs consider their work in constituencies to be more important than their purely parliamentary
                functions. In Pakistan, the parliaments have set aside portions of the state budget for financing public socio-economic
                development projects that are managed or overseen by MPAs/MNAs.
              </p>
              <p>
                It should further be noted that in 2015, the KP Assembly even tried to pass a law which would have made the Assembly
                exempt from the ambit of Right to Information legislation. This would have meant that nobody would have the backing
                of the law in terms of monitoring the performance of elected representatives. However, this move was averted with the
                advocacy campaigning of the civil society. As of right now, all elected members of the KP Provincial should provide
                information under the KP RTI Act 2013. This law is a very useful tool in terms of quantifying the performance of
                legislators. In fact, around the world Parliamentary Monitoring Organizations with the help of legislation on accessing
                information, gather data on legislators and empower the public to make elected representatives more accountable.
              </p>
              <p>
                In this regard, the purpose of this website has been to make elected representatives more accountable by monitoring
                their legislative performance in the form of a legislative performance scorecard.  KP Right to Information Act 2013 was
                used to get all the required information in order to analyse performance of legislators.
              </p>
            </div>
          </div>
        </div>
      </div>

      <div class="row">
        <div class="col-md-5 col-sm-8 col-xs-12">
          <div class="info-box bg-green">
            <span class="info-box-icon"><i class="fa fa-map-marker"></i></span>

            <div class="info-box-content">
              <span class="info-box-number" style="padding-top: 10px;">Khyber Pakhtunkhwa Map</span>
              <div class="progress">
                <div class="progress-bar" style="width: 100%"></div>
              </div>
              <span class="progress-description">
                Click on a district to view the legislators listing
              </span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
          <div class="info-box">
            <div id='map'></div>
            <!-- /.box-body -->
          </div>
        </div>
        <!-- /.col -->
        <div class="col-md-7 col-sm-8 col-xs-12">
          <div class="info-box bg-aqua">
            <span class="info-box-icon"><i class="fa fa-users"></i></span>

            <div class="info-box-content">
              <span class="info-box-number" style="padding-top: 10px;">Legislators</span>
              <div class="progress">
                <div class="progress-bar" style="width: 100%"></div>
              </div>
              <span class="progress-description">
                Click on a legislator for details
              </span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
          <div class="info-box">
            <div class="box-header">
              <h3 class="box-title" id="LegistlatorsList">No District Selected</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
              <table class="table table-hover" id="ltable">
                <tbody>
                <tr>
                  <th>Contituency</th>
                  <th>Name</th>
                </tr>
              </tbody></table>
            </div>
            <!-- /.box-body -->
          </div>
        </div>
        <!-- /.col -->
      </div>
    </div>
  </div>

<?php

require_once("includes/footer.php");

?>


<script type="text/javascript" src="data/geojson/pk.kpk.geojson"></script>

<script type="text/javascript">

	var map = L.map('map').setView([34.05, 74], 6);

	// control that shows state info on hover
	var info = L.control();

	info.onAdd = function (map) {
		this._div = L.DomUtil.create('div', 'info');
		this.update();
		return this._div;
	};

	info.update = function (props) {
		this._div.innerHTML = '<h4>' +  (props ?
			'<h4>' + props.NAME_3 + '</h4>'
			: 'Hover over a district');
	};

	info.addTo(map);


        function UpdateDistrictName(props) {
          dn = document.getElementById("DistrictName");

          dn.innerHTML = (props ? props.NAME_3 : 'Hover or click on a district');
        }

	// get color depending on population density value
	function getColor(d) {
		return '#ccc';
	}

	function style(feature) {
		return {
			weight: 2,
			opacity: 1,
			color: '#666',
			dashArray: '1',
			fillOpacity: 0.7,
			fillColor: getColor(feature.properties.density)
		};
	}

	function highlightFeature(e) {
		var layer = e.target;

		layer.setStyle({
			weight: 2,
			color: '#fff',
                        fillColor: '#006600',
			dashArray: '',
			fillOpacity: 0.7
		});

		if (!L.Browser.ie && !L.Browser.opera && !L.Browser.edge) {
			layer.bringToFront();
		}

		//info.update(layer.feature.properties);
                //UpdateDistrictName(layer.feature.properties);
		info.update(layer.feature.properties);
	}

	var geojson;

	function resetHighlight(e) {
		geojson.resetStyle(e.target);
		info.update();
	}

	function zoomToFeature(e) {
		map.fitBounds(e.target.getBounds());
	}

	function showDistrictID(e) {
		var layer = e.target;

		if(layer.feature.properties.ContituencyData)
                {
                  document.getElementById("LegistlatorsList").innerHTML = "Legislators for the " + layer.feature.properties.NAME_3;

                  data = layer.feature.properties.ContituencyData;
                  ltable = document.getElementById("ltable");

                  for(var I = 1; I < ltable.rows.length; )
                  {
                    ltable.deleteRow(1);
                  }

                  for(var I in data)
                  {
                    r = ltable.insertRow();
                    c1 = r.insertCell(0);
                    c2 = r.insertCell(1);

                    c1.innerHTML = data[I].Contituency;
                    c2.innerHTML = '<a href="mpa.php?mpaName=' + encodeURIComponent(data[I].Name) + '">' + data[I].Name + '</a>';
                  }
                }
                else
                {
                  alert(layer.feature.properties.ID_3);
                }
	}

	function onEachFeature(feature, layer) {
		layer.on({
			mouseover: highlightFeature,
			mouseout: resetHighlight,
			click: showDistrictID //zoomToFeature
		});
	}

	geojson = L.geoJson(pk3, {
		style: style,
		onEachFeature: onEachFeature
	}).addTo(map);

        map.attributionControl.setPrefix("");
        map.touchZoom.disable();
        map.doubleClickZoom.disable();
        map.scrollWheelZoom.disable();
        map.boxZoom.disable();
        map.keyboard.disable();
        $(".leaflet-control-zoom").css("visibility", "hidden");

</script>

</body>
</html>
