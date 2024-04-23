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
  $code = $_GET['code'];
  $sql_lietke_dh = "SELECT * FROM tbl_cart_details,tbl_sanpham WHERE tbl_cart_details.in_sanpham=tbl_sanpham.in_sanpham AND
    tbl_cart_details.code_cart='".$code."' ORDER BY tbl_cart_details.id_cart_details DESC";
  $query_lietke_dh =  mysqli_query($mysqli,$sql_lietke_dh);
?>

<p>Liệt kê danh sách sản phẩm</p>
<table class="table table-bordered border-dark ttable-success table-striped">
  <tr>
    <th>Id</th>
    <th>Mã đơn hàng</th>
    <th>Tên sản phẩm</th>
    <th>Số lượng</th>
    <th>Đơn giá</th>
    <th>Thành tiền</th>


  </tr>
  <?php
  $i = 0;
  $tongtien = 0;
  while($row = mysqli_fetch_array($query_lietke_dh)){
    $i++;
    $thanhtien = $row['giasp']*$row['soluongmua'];
    $tongtien += $thanhtien;
  ?>
  <tr>
    <td><?php echo $i ?></td>
    <td><?php echo $row['code_cart'] ?></td>
    <td><?php echo $row['tensanpham'] ?></td>
    <td><?php echo $row['soluongmua'] ?></td>
    <td><?php echo number_format($row['giasp'],0,',','.').'vnđ' ?></td>
    <td><?php echo number_format($thanhtien,0,',','.').'vnđ'?></td>


    
  </tr>
  <?php
  }
  ?>
    <tr>
    <td colspan="6">
        <p style="margin-left:600px">Tổng tiền: <?php echo number_format($tongtien,0,',','.').'vnđ'?> </p>

    </td>
    </tr>
</table>  
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

