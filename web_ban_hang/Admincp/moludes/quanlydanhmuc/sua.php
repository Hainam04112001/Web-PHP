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
    $sql_sua_danhmucsp = "SELECT * FROM tbl_danhmuc WHERE in_danhmuc = '$_GET[indanhmuc]'LIMIT 1";
    $query_sua_danhmucsp =  mysqli_query($mysqli,$sql_sua_danhmucsp);
  ?>
  <h3>Sửa danh mục sản phẩm</h3>

  <table class="table table-bordered border-dark ttable-success table-striped">
  <form method="POST" action ="moludes/quanlydanhmuc/xuly.php?indanhmuc=<?php echo $_GET['indanhmuc'] ?>">
      <?php
      while($dong = mysqli_fetch_array($query_sua_danhmucsp )){
      ?>
        <tr>
          <td>Tên danh mục</td>
          <td><input type="text" value = "<?php echo $dong['tendanhmuc'] ?>" name="tendanhmuc"></td>
        </tr>

        <tr>
          <td>Thứ tự</td>
          <td><input type="text" value = "<?php echo $dong['thutu'] ?>" name ="thutu"></td>
        </tr>

        <tr >
          <td colspan="2"><input type="submit" name="suadanhmuc" value ="Sửa danh mục sản phẩm"></td>
        </tr>    
        <?php
        }
        ?>
  </table>
  </form>  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>





