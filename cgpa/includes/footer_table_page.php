
<?php

require_once("footer.php");

?>

<!-- DataTables -->
<script src="libs/datatables/js/jquery.dataTables.min.js"></script>
<script src="libs/datatables/js/dataTables.bootstrap.min.js"></script>
<!-- page script -->
<script>
  $(function () {
    var scoreTable = $('#scoreTable');
    var lastColumn = $(scoreTable).find('th:last').index();
    
    $('#scoreTable').DataTable({
      "paging": false,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": false,
      "autoWidth": false,
      "order": [[ lastColumn, "desc" ]],
      "lengthMenu": [ 10, 25, 50, 75, 100, 150, 250, 500 ]
    });
  });
</script>

</body>
</html>
