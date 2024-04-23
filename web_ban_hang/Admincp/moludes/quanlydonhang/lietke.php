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
    $sql_lietke_dh = "SELECT * FROM tbl_cart,tbl_dangky WHERE tbl_cart.id_khachhang=tbl_dangky.id_dangki ORDER BY tbl_cart.id_cart DESC";
    $query_lietke_dh =  mysqli_query($mysqli,$sql_lietke_dh);
  ?>
  </style>
  <h3>Quản lý danh đơn hàng</h3>
  <table class="table table-bordered border-dark ttable-success table-striped">
    <tr>
      <th>Id</th>
      <th>Mã đơn hàng</th>
      <th>Tên khách hàng</th>
      <th>Địa chỉ</th>
      <th>Email</th>
      <th>Số điện thoại</th>
      <th>Tình trạng</th>
      <th>Quản lý</th>
      <th>In đơn hàng</th>

    </tr>
    <?php
    $i = 0;
    while($row = mysqli_fetch_array($query_lietke_dh)){
      $i++;
    ?>
    <tr>
      <td><?php echo $i ?></td>
      <td><?php echo $row['code_cart'] ?></td>
      <td><?php echo $row['tenkhachhang'] ?></td>
      <td><?php echo $row['diachi'] ?></td>
      <td><?php echo $row['email'] ?></td>
      <td><?php echo $row['dienthoai'] ?></td>
      <td>
          <?php if($row['cart_status']==1){
              echo '<a href="moludes/quanlydonhang/xuly.php?code =cart_status=0&code='.$row['code_cart'].'">Đơn hàng mới</a>';

          }else{
              echo 'Đang vận chuyển';
            }
          ?>
      </td>


      <td>
        <a href="index.php?action=donhang&query=xemdonhang&code=<?php echo $row['code_cart']?>">Xem đơn hàng</a>
      </td>

      <td>
        <a href="moludes/quanlydonhang/indonhang.php?code=<?php echo $row['code_cart']?>">In đơn hàng</a>
      </td>
      
    </tr>
    <?php
    }
    ?>

  </table>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
</body>
</html>
