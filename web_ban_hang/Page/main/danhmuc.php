<?php
    $sql_pro = "SELECT * FROM tbl_sanpham WHERE tbl_sanpham.in_danhmuc='$_GET[id]' ORDER BY in_sanpham DESC";
    $query_pro = mysqli_query($mysqli, $sql_pro);
    //get ten danh muc
    $sql_cate = "SELECT * FROM tbl_danhmuc WHERE tbl_danhmuc.in_danhmuc='$_GET[id]' LIMIT 1";
    $query_cate = mysqli_query($mysqli, $sql_cate);
    $row_title = mysqli_fetch_array($query_cate);
?>

<h4>Danh mục sản phẩm: <?php echo $row_title['tendanhmuc'] ?></h4>
<div class="row">
                    <?php
                    while($row = mysqli_fetch_array($query_pro)){
                    ?>
                    <div class ="col-md-2">
                        <a href="index.php?quanly=sanpham&id=<?php echo $row['in_sanpham']?>">
                            <img class="img img-responsive" width="80%" src='Admincp/moludes/quanlysp/uploads/<?php echo $row['hinhanh'] ?>'>
                            <p class = "title_product">Tên sản phẩm: <?php echo $row['tensanpham']?></p>
                            <p class = "price_product">Giá: <?php echo number_format($row['giasp'],0,',','.').'vnđ' ?></p>
                                                  
                        </a>
                    </div>
                    <?php
                    }
                    ?> 
                </div>