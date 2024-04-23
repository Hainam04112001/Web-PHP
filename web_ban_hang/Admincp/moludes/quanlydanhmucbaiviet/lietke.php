<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
  <style>
    /* #page-content-wrapper {
      min-width: 0;
      width: 85%;
    }    */
  </style>
</head>
<body>
<?php
  $sql_lietke_danhmucbv = "SELECT * FROM tbl_danhmucbaiviet ORDER BY thutu DESC";
  $query_lietke_danhmucbv =  mysqli_query($mysqli,$sql_lietke_danhmucbv);
?>
 
<h3 style="margin-top:10px">Liệt kê danh mục bài viết</h3>
<table class="table table-bordered border-dark ttable-success table-striped">
  <tr>
    <th>Id</th>
    <th>Tên danh mục</th>
    <th>Quản lý</th>

  </tr>
  <?php
  $i = 0;
  while($row = mysqli_fetch_array($query_lietke_danhmucbv)){
    $i++;
  ?>
  <tr>
    <td><?php echo $i ?></td>
    
    <td>
    <?php 
      try { 
        if (isset($row['tendanhmuc_baiviet']) && !empty($row['tendanhmuc_baiviet'])) {
          if (is_numeric($row['tendanhmuc_baiviet'])) {
            throw new Exception('Trường "tendanhmuc_baiviet" chỉ chấp nhận các ký tự chữ');
          } else {
            echo $row['tendanhmuc_baiviet'];
          }
        } else {
          throw new Exception('Trường "tendanhmuc_baiviet" không được bỏ trống');
        }
      } catch (Exception $e) {
        echo 'Lỗi: ' . $e->getMessage();
      }
?>
    </td>
    <td>
      <a href="moludes/quanlydanhmucbaiviet/xuly.php?idbaiviet=<?php echo $row['id_baiviet']?>">Xóa</a>|
      <a href="?action=quanlydanhmucbaiviet&query=sua&idbaiviet=<?php echo $row['id_baiviet']?>">Sửa</a>
    </td>
    
  </tr>
  <?php
  }
  ?>

</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
