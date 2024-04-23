<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
  <h3>Thêm sản phẩm</h3>
  <table class="table table-bordered border-dark ttable-success table-striped">
  <form method="POST" action ="moludes/quanlysp/xuly.php" enctype="multipart/form-data">
    <tr>
      <td>Tên sản phẩm</td>
      <td><input type="text" name="tensanpham" required></td>
    </tr>
    <tr>
      <td>Mã sp</td>
      <td><input type="text" name="masp" required></td>
    </tr>
    <tr>
      <td>Giá sp</td>
      <td><input type="text" name="giasp"></td>
    </tr>
    <tr>
      <td>Số lượng</td>
      <td><input type="text" name="soluong"></td>
    </tr>
    <tr>
      <td>Hình ảnh</td>
      <td><input type="file" name="hinhanh"></td>
    </tr>
    <tr>
      <td>Tóm tắt</td>
      <td><textarea row="10" width="100%" name ="tomtat" style="resize:none"></textarea></td>
    </tr> 
    <tr>
      <td>Nội dung</td>
      <td><textarea row="10" width="100%" name ="noidung" style="resize:none"></textarea></td>
    </tr>
    <tr>
      <td>Danh mục sản phẩm</td>
      <td>
        <select name="danhmuc">
          <?php
          $sql_danhmuc = "SELECT * FROM tbl_danhmuc ORDER BY in_danhmuc DESC";
          $query_danhmuc = mysqli_query($mysqli, $sql_danhmuc);
          while($row_danhmuc = mysqli_fetch_array($query_danhmuc)){
          ?>
          <option value ="<?php echo $row_danhmuc['in_danhmuc']?>"><?php echo $row_danhmuc['tendanhmuc']?></option>
          <?php
          }
          ?>
        </select>
      </td>
    </tr>
    <tr>
      <td>Tình trang</td>
      <td>
        <select name="tinhtrang">
          <option value ="1">Kích hoạt</option>
          <option value ="0">Ẩn</option>
        </select>
      </td>
    </tr>

    <tr >
      <td colspan="2"><input type="submit" name="themsanpham" value ="Thêm sản phẩm"></td>
    </tr>    
  </form>
  </table>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
