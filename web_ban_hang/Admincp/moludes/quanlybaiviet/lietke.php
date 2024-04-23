<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
  <style>
    #page-content-wrapper {
      min-width: 0;
      width: 85%;
    }   
  </style>
</head>
<body>
  <?php
  $sql_lietke_bv = "SELECT * FROM tbl_baiviet,tbl_danhmucbaiviet WHERE tbl_baiviet.id_danhmuc = tbl_danhmucbaiviet.id_baiviet ORDER BY 
    tbl_baiviet.id DESC";
  $query_lietke_bv =  mysqli_query($mysqli,$sql_lietke_bv);
  ?>

  <h3 style="margin-top:10px">Liệt kê danh sách bài viết</h3>
  <table class="table table-bordered border-dark ttable-success table-striped">
    <tr>
      <th>Id</th>
      <th>Tên bài viết</th>
      <th>Hình ảnh</th>
      <th>Danh mục</th>
      <th>Tóm tắt</th>
      <th>Trạng thái</th>
      <th>Quản lý</th>

    </tr>
    <?php
    $i = 0;
    while($row = mysqli_fetch_array($query_lietke_bv)){
      $i++;
    ?>
    <tr>
      <td><?php echo $i ?></td>
      <td><?php echo $row['tenbaiviet'] ?></td>
      <td><img src="moludes/quanlybaiviet/uploads/<?php echo $row['hinhanh'] ?>" width="150px"></td>
      <td><?php echo $row['tendanhmuc_baiviet'] ?></td>
      <td><?php echo $row['tomtat'] ?></td>
      <td><?php if($row['tinhtrang']==1){
          echo 'Kich hoat';
        }else{
          echo 'Ẩn';
        } 
        ?>
      </td>
      <td>
      <a href="moludes/quanlybaiviet/xuly.php?idbaiviet=<?php echo $row['id']?>">Xóa</a>|
      <a href="?action=quanlybaiviet&query=sua&idbaiviet=<?php echo $row['id']?>">Sửa</a>
      </td>
      
    </tr>
    <?php
    }
    ?>

  </table>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
