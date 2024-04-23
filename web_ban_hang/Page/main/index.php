<?php
    if(isset($_GET['trang'])){
        $page = $_GET['trang'];
    }else{
        $page ='1';
    }
    if($page =="" || $page ==1){
        $begin = 0;
    }else{
        $begin = ($page*3)-3;
    }
    $sql_pro = "SELECT * FROM tbl_sanpham,tbl_danhmuc WHERE tbl_sanpham.in_danhmuc=tbl_danhmuc.in_danhmuc ORDER BY tbl_sanpham.
    in_sanpham DESC LIMIT $begin,20";
    $query_pro = mysqli_query($mysqli, $sql_pro);
    

?>
<h4>Sản phẩm mới nhất</h4>
        
                <div class="row">
                    <?php
                    while($row = mysqli_fetch_array($query_pro)){
                    ?>
                    <div class ="col-md-2">
                        <a style="text-decoration: none" href="index.php?quanly=sanpham&id=<?php echo $row['in_sanpham']?>">
                            <img class="img img-responsive" width="80%" src='Admincp/moludes/quanlysp/uploads/<?php echo $row['hinhanh'] ?>'>
                            <p  class = "title_product">Tên sản phẩm: <?php echo $row['tensanpham']?></p>
                            <p  class = "price_product">Giá: <?php echo number_format($row['giasp'],0,',','.').'vnđ' ?></p>
                            <p style="text-align: center;color:#000"><?php echo $row['tendanhmuc'] ?></p>                          
                        </a>
                    </div>
                    <?php
                    }
                    ?> 
                </div>
                
                <div style="clear:both;"></div>
                <style type="text/css">
                    ul.list_trang {
                        padding: 0;
                        margin: 0;
                        list-style-type: none;
                    }

                    ul.list_trang li {
                        float: left;
                        padding: 5px 13px;
                        margin: 5px;
                        background: burlywood;
                    }

                    ul.list_trang li a{
                        color: #000;
                        text-align:center;
                        text-decoration:none;
                        display:block;
                    }


                </style>
                <?php
                $sql_trang = mysqli_query($mysqli,"SELECT * FROM tbl_sanpham");
                $row_count = mysqli_num_rows($sql_trang);
                $trang = ceil($row_count/10);
                ?>
                <p>Trang hiện tại : <?php echo $page ?>/<?php echo $trang ?></p>
                
                <ul class="list_trang">
                    <?php
                    for($i=1;$i<=$trang;$i++){
                    ?>
                        <li <?php if($i==$page){echo'style="background:brown"';}else{echo '';} ?>><a 
                            href="index.php?trang=<?php echo $i ?>"><?php echo $i ?></a></li>
                    <?php
                    }
                    ?>
                </ul>