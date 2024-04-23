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
    $sql_lietke_danhmucsp = "SELECT * FROM tbl_danhmuc ORDER BY thutu DESC";
    $query_lietke_danhmucsp =  mysqli_query($mysqli,$sql_lietke_danhmucsp);
  ?>
  <h3>Liệt kê danh sách sản phẩm</h3>
  <table class="table table-bordered border-dark ttable-success table-striped">
    <tr>
      <th>Id</th>
      <th>Tên danh mục</th>
      <th>Quản lý</th>

    </tr>
    <?php
    $i = 0;
    while($row = mysqli_fetch_array($query_lietke_danhmucsp)){
      $i++;
    ?>
    <tr>
      <td><?php echo $i ?></td>
      <td><?php echo $row['tendanhmuc'] ?></td>
      <td>
        <a href="moludes/quanlydanhmuc/xuly.php?indanhmuc=<?php echo $row['in_danhmuc']?>">Xóa</a>|
        <a href="?action=quanlydanhmucsanpham&query=sua&indanhmuc=<?php echo $row['in_danhmuc']?>">Sửa</a>
      </td>
    </tr>
    <?php
    }
    ?>
  </table>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
