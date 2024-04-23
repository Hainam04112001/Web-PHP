<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" 
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
    
    <p>Giỏ hàng
        <?php
        if(isset($_SESSION['dangky'])){
            echo 'xin chào: '.'<span style ="color:red">' .$_SESSION['dangky'].'</span>';
            echo $_SESSION['id_khachhang'];
        }
        ?>
    </p>

    <?php
        if(isset($_SESSION['cart'])){

        }
    ?>

<div class="container">
  <!-- Responsive Arrow Progress Bar -->
  <div class="arrow-steps clearfix">
    <div class="step current"> <span> <a href="index.php?quanly=giohang" >Giỏ hàng</a></span> </div>
    <div class="step"> <span><a href="index.php?quanly=vanchuyen" >Thông tin chuyển hàng</a></span> </div>
    <div class="step"> <span><a href="index.php?quanly=thontinthanhtoan" >Thanh toán</a><span> </div>
    <!-- <div class="step"> <span><a href="index.php?quanly=donhangdadat" >Đơn hàng chi tiết</a><span> </div> -->
  </div>
  <!-- end Responsive Arrow Progress Bar -->
  <!-- <div class="nav clearfix">
    <a href="#" class="prev">Previous</a> |
    <a href="#" class="next pull-right">Next</a>
  </div> -->
</div>
    <table class="table table-bordered border-dark ttable-success">
    <tr>
            <th>Id</th>
            <th>Mã sản phẩm</th>
            <th>Tên sản phẩm</th>
            <th>Hình ảnh</th>
            <th>Số lượng</th>
            <th>Giá sản phẩm</th>
            <th>Thành tiền</th>
            <th>Quản lý</th>
            
    </tr>

        <?php
        if(isset($_SESSION['cart'])){
            $i = 0;
            $tongtien = 0;
            foreach($_SESSION['cart'] as $cart_item){
                $thanhtien =$cart_item['soluong'] * $cart_item['giasp'] ;
                $tongtien+=$thanhtien;
                $i++;
        ?>

        <tr>
            <td><?php echo $i; ?></td>
            <td><?php echo $cart_item['masp']; ?></td>
            <td><?php echo $cart_item['tensanpham']; ?></td>
            <td><img src="Admincp/moludes/quanlysp/uploads/<?php echo $cart_item['hinhanh']; ?>"width="150px"></td>
            <td>
                <a href="Page/main/themgiohang.php?cong=<?php echo $cart_item['id'] ?>"><i class="fa-regular fa-plus"></i></a>
                <?php echo $cart_item['soluong']; ?>
                <a href="Page/main/themgiohang.php?tru=<?php echo $cart_item['id'] ?>"><i class="fa-solid fa-minus"></i></a>
            </td>
            <td><?php echo number_format($cart_item['giasp'],0,',',',').'vnđ'; ?></td>
            <td><?php echo number_format($thanhtien,0,',',',').'vnđ'; ?></td>
            <td><a href="Page/main/themgiohang.php?xoa=<?php echo $cart_item['id'] ?>">Xóa</a></td>
            
        </tr>
        <?php
            }
        ?>
            <tr>
                <td colspan="8">
                    <p style="float:left">Tổng tiền: <?php echo number_format($tongtien,0,',',',').'vnđ'?></p><br/>
                    <p style="float:right;"><a href="Page/main/themgiohang.php?xoatatca=1"> Xóa tất cả</a></p>
                    <div style="clear: both;"> </div>
                    <?php
                    if(isset($_SESSION['dangky'])){
                        ?>
                        <p><a href="index.php?quanly=vanchuyen">Hình thức vận chuyển </a></p> 
                    <?php
                    }else{
                    ?>
                    <p><a href="index.php?quanly=dangky">Đăng kí Đặt Hàng </a></p>
                    <?php
                    }
                    ?>
                </td>
            </tr>
        <?php
        }else{
        ?>
            <tr>
                <td colspan="8"><p>Hiện tại giỏ hàng trống</p></td>
            </tr>
        <?php
        }
        ?>
    </table>

</body>
</html>
