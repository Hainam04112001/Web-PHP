<h3>Chi tiết sản phẩm</h3>
<?php
    $sql_chitiet = "SELECT * FROM tbl_sanpham,tbl_danhmuc WHERE tbl_sanpham.in_danhmuc=tbl_danhmuc.in_danhmuc AND tbl_sanpham.
    in_sanpham = '$_GET[id]' LIMIT 1";
    $query_chitiet = mysqli_query($mysqli, $sql_chitiet);
    while($row_chitiet = mysqli_fetch_array($query_chitiet)){
?>
<div class="wapper_chitiet">
    <div class="hinhanh_sanpham">
        <img width="100%" src="Admincp/moludes/quanlysp/uploads/<?php echo $row_chitiet['hinhanh'] ?>">
    </div>
    <form method="POST" action="Page/main/themgiohang.php?insanpham=<?php echo $row_chitiet['in_sanpham']?>">
        <div class="chitiet_sanpham">
            <h3 style ="margin:0">Tên sản phẩm : <?php echo $row_chitiet['tensanpham'] ?></h3>
            <p>Mã sp: <?php echo $row_chitiet['masp'] ?></p>
            <p>Giá sp: <?php echo number_format($row_chitiet['giasp'],0,',','.').'vnđ' ?></p>
            <p>Số lương sp: <?php echo $row_chitiet['soluong'] ?></p>
            <p>Danh mục sp: <?php echo $row_chitiet['tendanhmuc'] ?></p>
            <p><input class="themgiohang" name="themgiohang" type ="submit" value ="Thêm vào giỏ hàng"></p>
        </div>
    </form>
</div>

<div class="clear">
    <div class="tabs">
    <ul id="tabs-nav">
        <li><a href="#tab1">Thông số kĩ thuật</a></li>
        <li><a href="#tab2">Nội dung chi tiết</a></li>
        <li><a href="#tab3">Hình ảnh sản phẩm</a></li>
    </ul> <!-- END tabs-nav -->
    <div id="tabs-content">
        <div id="tab1" class="tab-content">
            <?php echo $row_chitiet['tomtat'] ?>
        </div>
        <div id="tab2" class="tab-content">
            <?php echo $row_chitiet['noidung'] ?>
        </div>
        <div id="tab3" class="tab-content">
            <img width="100%" src="Admincp/moludes/quanlysp/uploads/<?php echo $row_chitiet['hinhanh'] ?>">
        </div>
    </div> <!-- END tabs-content -->
    </div> <!-- END tabs -->
</div>
<?php
}
?>

