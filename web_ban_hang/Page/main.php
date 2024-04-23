<div id="main">
    <div class="row">
    <div class ="col-lg-2 col-md-2 col-sm-12 col-xs-12">
        <?php
            include("sidebar/sidebar.php");
        ?>
    </div>
    <div class ="col-lg-10 col-md-10 col-sm-12 col-xs-12">
        <div class="maincontent">
            <?php
            if(isset($_GET['quanly'])){
                $tam = $_GET['quanly'];
            }else{
                $tam = '';
            }
            if($tam =='danhmucsanpham'){
                include("./Page/main/danhmuc.php");
            }elseif($tam=='giohang'){
                include("./Page/main/giohang.php");
            }elseif($tam=='danhmucbaiviet'){
                include("./Page/main/danhmucbaiviet.php");
            }elseif($tam=='baiviet'){
                include("./Page/main/baiviet.php");
            }elseif($tam=='tintuc'){
                include("./Page/main/tintuc.php");
            }elseif($tam=='lienhe'){
                include("./Page/main/lienhe.php");
            }
            elseif($tam=='sanpham'){
                include("./Page/main/sanpham.php");
            }
            elseif($tam=='dangky'){
                include("./Page/main/dangky.php");
            }
            elseif($tam=='thanhtoan'){
                include("./Page/main/thanhtoan.php");
            }
            elseif($tam=='dangnhap'){
                include("./Page/main/dangnhap.php");
            }
            elseif($tam=='timkiem'){
                include("./Page/main/timkiem.php");
            }
            elseif($tam=='camon'){
                include("./Page/main/camon.php");
            }
            elseif($tam=='thaydoimatkhau'){
                include("./Page/main/thaydoimatkhau.php");
            }

            elseif($tam=='lichsudonhang'){
                include("./Page/main/lichsudonhang.php");
            }
            elseif($tam=='xemdonhang'){
                include("./Page/main/xemdonhang.php");
            }

            elseif($tam=='vanchuyen'){
                include("./Page/main/vanchuyen.php");
            }
            elseif($tam=='thongtinthanhtoan'){
                include("./Page/main/thongtinthanhtoan.php");
            }
            elseif($tam=='donhangdadat'){
                include("./Page/main/donhangdadat.php");
            }

            else{
                include("./Page/main/index.php");
            }
            ?>
        </div>
    </div>
</div>