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
    $sql_sua_sp = "SELECT * FROM tbl_sanpham WHERE in_sanpham = '$_GET[insanpham]'LIMIT 1";
    $query_sua_sp =  mysqli_query($mysqli,$sql_sua_sp);
  ?>
  <h3>Sửa sản phẩm</h3>
  <table class="table table-bordered border-dark ttable-success table-striped">
  <?php
  while($row = mysqli_fetch_array($query_sua_sp)){
  ?>
  <form method="POST" action ="moludes/quanlysp/xuly.php?insanpham=<?php echo $row['in_sanpham']?>" enctype="multipart/form-data">
    <tr>
      <td>Tên sản phẩm</td>
      <td><input type="text" value ="<?php echo $row['tensanpham']?>" name="tensanpham"></td>
    </tr>
    <tr>
      <td>Mã sp</td>
      <td><input type="text" value ="<?php echo $row['masp']?>" name= "masp"></td>
    </tr>
    <tr>
      <td>Giá sp</td>
      <td><input type="text" value ="<?php echo $row['giasp']?>" name="giasp"></td>
    </tr>
    <tr>
      <td>Số lượng</td>
      <td><input type="text" value ="<?php echo $row['soluong']?>" name="soluong"></td>
    </tr>
    <tr>
      <td>Hình ảnh</td>
      <td>
        <input type="file" name="hinhanh">
        <img src="moludes/quanlysp/uploads/<?php echo $row['hinhanh'] ?>" width="150px">
      </td>
    </tr>
    <tr>
      <td>Tóm tắt</td>
      <td><textarea row="10" width="100%" name ="tomtat" style="resize:none"><?php echo $row['tomtat']?></textarea></td>
    </tr> 
    <tr>
      <td>Nội dung</td>
      <td><textarea row="10" width="100%" name ="noidung" style="resize:none"><?php echo $row['noidung']?></textarea></td>
    </tr> 
    <tr>
      <td>Danh mục sản phẩm</td>
      <td>
        <select name="danhmuc">
          <?php
          $sql_danhmuc = "SELECT * FROM tbl_danhmuc ORDER BY in_danhmuc DESC";
          $query_danhmuc = mysqli_query($mysqli, $sql_danhmuc);
          while($row_danhmuc = mysqli_fetch_array($query_danhmuc)){
            if($row_danhmuc['in_danhmuc']==$row['in_danhmuc']){
          ?>
          <option selected value ="<?php echo $row_danhmuc['in_danhmuc']?>"><?php echo $row_danhmuc['tendanhmuc']?></option>
          <?php
            }else{
          ?>
          <option value ="<?php echo $row_danhmuc['in_danhmuc']?>"><?php echo $row_danhmuc['tendanhmuc']?></option>
          <?php
            }
          }
          ?>
        </select>
      </td>
    </tr>
    <tr>
      <td>Tình trang</td>
      <td>
        <select name="tinhtrang">
          <?php
          if($row['tinhtrang']==1){
          ?>
          <option value ="1" selected>Kích hoạt</option>
          <option value ="0">Ẩn</option>
          <?php
          }else{
          ?>
          <option value ="1">Kích hoạt</option>
          <option value ="0" selected>Ẩn</option>
          <?php
          }
          ?>
        </select>
      </td>
    </tr>

    <tr >
      <td colspan="2"><input type="submit" name="suasanpham" value ="Sửa sản phẩm"></td>
    </tr>    
  </form>
  <?php
  }
  ?>

  </table> 

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
