<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
  <?php
    $sql_lh = "SELECT * FROM tbl_lienhe WHERE id = 1";
    $query_lh =  mysqli_query($mysqli,$sql_lh);
  ?>

  <h3>Liên hệ</h3>
  <table class="table table-bordered border-dark ttable-success table-striped">
    <?php
      while($dong = mysqli_fetch_array($query_lh )){
    ?>
    <form method="POST" action ="moludes/thongtinweb/xuly.php?id=<?php echo $dong['id']?>" enctype="multipart/form-data">
      <tr>
        <td>Thông tin giới thiệu Website</td>
        <td><textarea row="10" width="100%" name ="thongtinlienhe" style="resize:none"><?php echo $dong['thongtinlienhe']?></textarea></td>
      </tr>

      <tr >
        <td colspan="2"><input type="submit" name="submitlienhe" value ="Cập nhật"></td>
      </tr>
      <?php
        }
      ?>
    </form>

  </table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
