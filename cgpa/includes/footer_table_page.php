
<?php

require_once("footer.php");

?>

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
      "order": [[ 11, "desc" ]],
      "lengthMenu": [ 10, 25, 50, 75, 100, 150, 250, 500 ]
    });
  });
</script>

</body>
</html>
