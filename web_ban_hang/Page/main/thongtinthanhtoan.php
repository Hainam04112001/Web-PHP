<div class="container">
  <!-- Responsive Arrow Progress Bar -->
  <div class="arrow-steps clearfix">
    <div class="step done"> <span> <a href="index.php?quanly=giohang" >Giỏ hàng</a></span> </div>
        <div class="step done"> <span><a href="index.php?quanly=vanchuyen" >Thông tin chuyển hàng</a></span> </div>
        <div class="step current"> <span><a href="index.php?quanly=thongtinthanhtoan" >Thanh toán</a><span> </div>
        <!-- <div class="step"> <span><a href="index.php?quanly=donhangdadat" >Đơn hàng chi tiết</a><span> </div> -->
    </div>
    <form action="Page/main/xulythanhtoan.php" method="POST">
    <div class="row">
    
    <?php
        $id_dangki = $_SESSION['id_khachhang'];
        $sql_get_vanchuyen = mysqli_query($mysqli,"SELECT * FROM tbl_shipping WHERE id_dangki='$id_dangki' LIMIT 1");
        $count = mysqli_num_rows($sql_get_vanchuyen);
        if($count>0){
            $row_get_vanchuyen = mysqli_fetch_array($sql_get_vanchuyen);
            $name =  $row_get_vanchuyen['name'];
            $phone =  $row_get_vanchuyen['phone'];
            $address =  $row_get_vanchuyen['address'];
            $note =  $row_get_vanchuyen['note'];
        }else{
            $name ="";
            $phone = "";
            $address = "";
            $note = "";
        }
        
    ?>
 
        <div class="col-md-8">
            <h4>Thông tin vận chuyển và giỏ hàng</h4>
            <ul>
                <li>Họ và tên vận chuyển : <b><?php echo $name ?></b></li>
                <li>Số điện thoại : <b><?php echo $phone ?></b></li>
                <li>Địa chỉ : <b><?php echo $address ?></b></li>
                <li>Ghi chú : <b><?php echo $note ?></b></li>

            </ul>
            <h5>Giỏ hàng của bạn</h5>
            <table class="table table-bordered border-dark ttable-success">
                <tr>
                    <th>Id</th>
                    <th>Mã sản phẩm</th>
                    <th>Tên sản phẩm</th>
                    <th>Hình ảnh</th>
                    <th>Số lượng</th>
                    <th>Giá sản phẩm</th>
                    <th>Thành tiền</th>
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
                        
                        
                    </tr>
                    <?php
                        }
                    ?>
                        <tr>
                            <td colspan="8">
                                <p style="float:left">Tổng tiền: <?php echo number_format($tongtien,0,',',',').'vnđ'?></p><br/>
                                
                                <div style="clear: both;"> </div>
                            
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
            <style type="text/css">
                .col-md-4.hinhthucthanhtoan .form-check{
                    margin:11px;
                }
            </style>
        </div>
        <div class="col-md-4 hinhthucthanhtoan">
            <h4>Phương thức thanh toán</h4>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="payment" value="tien mat" id="flexRadioDefault1" checked>
                <label class="form-check-label" for="flexRadioDefault1">
                    Tiền mặt
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="payment"  value="chuyen khoan" id="flexRadioDefault2">
                <label class="form-check-label" for="flexRadioDefault2">
                    Chuyển khoản
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="payment"  value="momo" id="flexRadioDefault3">
                <img src="Images/momo.png" height="32" width="32" alt="">
                <label class="form-check-label" for="flexRadioDefault3">
                    MoMo
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="payment"  value="vnpay" id="flexRadioDefault4">
                <img src="Images/vnpay.png" height="32" width="32" alt="">
                <label class="form-check-label" for="flexRadioDefault4">
                    VnPay
                </label>
            </div>
            <input type="submit" value ="Thanh toán ngay" name="thanhtoanngay" class="btn btn-danger">
        
        </div>
        <div>
       
</div>
</form>