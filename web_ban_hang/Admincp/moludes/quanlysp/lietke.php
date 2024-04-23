<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
  <title>Document</title>
</head>
<body>
<?php
  $sql_lietke_sp = "SELECT * FROM tbl_sanpham,tbl_danhmuc WHERE tbl_sanpham.in_danhmuc = tbl_danhmuc.in_danhmuc ORDER BY in_sanpham DESC";
  $query_lietke_sp =  mysqli_query($mysqli,$sql_lietke_sp);
?>
</style>
<h3 style="margin-top: 10px;">Liệt kê danh mục sản phẩm</h3>
<table class="table table-bordered border-dark ttable-success table-striped">
  <tr>
    <th>Id</th>
    <th>Tên sản phẩm</th>
    <th>Hình ảnh</th>
    <th>Giá sp</th>
    <th>Số lượng</th>
    <th>Danh mục</th>
    <th>Mã sp</th>
    <th>Tóm tắt</th>
    <th>Trạng thái</th>
    <th>Quản lý</th>

  </tr>
  <?php
  $i = 0;
  while($row = mysqli_fetch_array($query_lietke_sp)){
    $i++;
  ?>
  <tr>
    <td><?php echo $i ?></td>
    <td><?php echo $row['tensanpham'] ?></td>
    <td><img src="moludes/quanlysp/uploads/<?php echo $row['hinhanh'] ?>" width="150px"></td>
    <td><?php echo $row['giasp'] ?></td>
    <td><?php echo $row['soluong'] ?></td>
    <td><?php echo $row['tendanhmuc'] ?></td>
    <td><?php echo $row['masp'] ?></td>
    <td><?php echo $row['tomtat'] ?></td>
    <td><?php if($row['tinhtrang']==1){
        echo 'Kich hoat';
      }else{
        echo 'Ẩn';
      } 
      ?>
    </td>
    <td>
    <a href="moludes/quanlysp/xuly.php?insanpham=<?php echo $row['in_sanpham']?>">Xóa</a>|
    <a href="?action=quanlysp&query=sua&insanpham=<?php echo $row['in_sanpham']?>">Sửa</a>
    </td>
    
  </tr>
  <?php
  }
  ?>

</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
