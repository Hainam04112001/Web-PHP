<?php
include('../../Config/config.php');

$thongtinlienhe = $_POST['thongtinlienhe'];
$id=$_GET['id'];
if(isset($_POST['submitlienhe'])){
    //sua san pham
    $sql_update = "UPDATE tbl_lienhe SET thongtinlienhe='".$thongtinlienhe."' WHERE id=".$id." ";
    mysqli_query($mysqli,$sql_update);
    header('Location:../..//index.php?action=quanlyweb&query=capnhat');

}

?>