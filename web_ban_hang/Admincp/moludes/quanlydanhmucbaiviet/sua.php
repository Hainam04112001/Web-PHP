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
    $sql_sua_danhmucbv = "SELECT * FROM tbl_danhmucbaiviet WHERE id_baiviet = '$_GET[idbaiviet]'LIMIT 1";
    $query_sua_danhmucbv =  mysqli_query($mysqli,$sql_sua_danhmucbv);
  ?>
  <h3>Sửa danh mục bài viết</h3>
  <table class="table table-bordered border-dark ttable-success table-striped">
  <form method="POST" action ="moludes/quanlydanhmucbaiviet/xuly.php?idbaiviet=<?php echo $_GET['idbaiviet'] ?>">
      <?php
      while($dong = mysqli_fetch_array($query_sua_danhmucbv )){
      ?>
        <tr>
          <td>Tên danh mục bài viết </td>
          <td><input type="text" value = "<?php echo $dong['tendanhmuc_baiviet'] ?>" name="tendanhmucbaiviet"></td>
        </tr>
        <tr>
          <td>Thứ tự</td>
          <td><input type="text" value = "<?php echo $dong['thutu'] ?>" name ="thutu"></td>
        </tr>

        <tr >
          <td colspan="2"><input type="submit" name="suadanhmucbaiviet" value ="Sửa danh mục bài viết"></td>
        </tr>    
        <?php
        }
        ?>

  </form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

</table>