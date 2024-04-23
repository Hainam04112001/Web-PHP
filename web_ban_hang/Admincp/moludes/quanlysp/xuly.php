<?php
include('../../Config/config.php');

$tensanpham = $_POST['tensanpham'];
$masp = $_POST['masp'];
$giasp = $_POST['giasp'];
$soluong = $_POST['soluong'];
//xử lý hình ảnh
$hinhanh= $_FILES['hinhanh']['name'];
$hinhanh_tmp = $_FILES['hinhanh']['tmp_name'];
$hinhanh = time().'_'.$hinhanh;
$tomtat = $_POST['tomtat'];
$noidung = $_POST['noidung'];
$tinhtrang = $_POST['tinhtrang'];
$danhmuc = $_POST['danhmuc'];


if(isset($_POST['themsanpham'])){
    //them san pham
    $sql_them = "INSERT INTO tbl_sanpham(tensanpham,masp,giasp,soluong,hinhanh,tomtat,noidung,tinhtrang,in_danhmuc) VALUE ('".$tensanpham."','".$masp."',
    '".$giasp."','".$soluong."','".$hinhanh."','".$tomtat."','".$noidung."','".$tinhtrang."','".$danhmuc."')";
    mysqli_query($mysqli,$sql_them);
    move_uploaded_file($hinhanh_tmp,'uploads/'.$hinhanh);
    header('Location:../../index.php?action=quanlysp&query=them');
}elseif(isset($_POST['suasanpham'])){
    //sua san pham
    if(!empty($_FILES['hinhanh']['name'])){
        
        $sql_update = "UPDATE tbl_sanpham SET tensanpham='".$tensanpham."',masp='".$masp."',giasp='".$giasp."',soluong='".$soluong."',
        hinhanh='".$hinhanh."',tomtat='".$tomtat."',noidung='".$noidung."',in_danhmuc='".$danhmuc."',tinhtrang='".$tinhtrang."'WHERE in_sanpham='$_GET[insanpham]'";
        //xóa hình
        move_uploaded_file($hinhanh_tmp,'uploads/'.$hinhanh);
        $sql = "SELECT * FROM tbl_sanpham WHERE in_sanpham = '$_GET[insanpham]' LIMIT 1";
        $query = mysqli_query($mysqli,$sql);
        while($row = mysqli_fetch_array($query)){
        unlink('uploads/'.$row['hinhanh']);
    }
       

    }else{
        $sql_update = "UPDATE tbl_sanpham SET tensanpham='".$tensanpham."',masp='".$masp."',giasp='".$giasp."',soluong='".$soluong."',
        tomtat='".$tomtat."',noidung='".$noidung."',in_danhmuc='".$danhmuc."',tinhtrang='".$tinhtrang."'WHERE in_sanpham='$_GET[insanpham]'";
    }
    mysqli_query($mysqli,$sql_update);
    header('Location:../../index.php?action=quanlysp&query=them');

}else{
    $id = $_GET['insanpham'];
    $sql = "SELECT * FROM tbl_sanpham WHERE in_sanpham = '$id' LIMIT 1";
    $query = mysqli_query($mysqli,$sql);
    while($row = mysqli_fetch_array($query)){
        unlink('uploads/'.$row['hinhanh']);
    }
    $sql_xoa = "DELETE FROM tbl_sanpham WHERE in_sanpham = '".$id."'";
    mysqli_query($mysqli,$sql_xoa);
    header('Location:../../index.php?action=quanlysp&query=them');
}

?>