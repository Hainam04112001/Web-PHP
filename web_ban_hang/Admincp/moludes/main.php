<div class="clear"></div>
<div class="main">
    <?php
            if(isset($_GET['action']) && $_GET['query']){
                $tam = $_GET['action'];
                $query = $_GET['query'];
            }else{
                $tam = '';
                $query = '';
            }
            if($tam =='quanlydanhmucsanpham' && $query=='them'){
                include("moludes/quanlydanhmuc/them.php");
                include("moludes/quanlydanhmuc/lietke.php");

            }elseif($tam =='quanlydanhmucsanpham' && $query=='sua'){
                include("moludes/quanlydanhmuc/sua.php");

            }elseif($tam =='quanlysp' && $query=='them'){
                include("moludes/quanlysp/them.php");
                include("moludes/quanlysp/lietke.php");

            }elseif($tam =='quanlysp' && $query=='sua'){
                include("moludes/quanlysp/sua.php");
                
            }elseif($tam =='quanlydonhang' && $query=='lietke'){
                include("moludes/quanlydonhang/lietke.php");
            }elseif($tam =='donhang' && $query=='xemdonhang'){
                include("moludes/quanlydonhang/xemdonhang.php");
            }
            elseif($tam =='quanlydanhmucbaiviet' && $query=='them'){
                include("moludes/quanlydanhmucbaiviet/them.php");
                include("moludes/quanlydanhmucbaiviet/lietke.php");
            }
            elseif($tam =='quanlydanhmucbaiviet' && $query=='sua'){
                include("moludes/quanlydanhmucbaiviet/sua.php");
            }
            elseif($tam =='quanlybaiviet' && $query=='them'){
                include("moludes/quanlybaiviet/them.php");
                include("moludes/quanlybaiviet/lietke.php");
            }
            elseif($tam =='quanlybaiviet' && $query=='sua'){
                include("moludes/quanlybaiviet/sua.php");
            }
            elseif($tam =='quanlyweb' && $query=='capnhat'){
                include("moludes/thongtinweb/quanly.php");
            }
            else{
                include("moludes/dashboard.php");
            }
            
    ?>
</div>