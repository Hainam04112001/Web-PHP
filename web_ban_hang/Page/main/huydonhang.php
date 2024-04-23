<?php
    include('../../Admincp/Config/config.php');
    if(isset($_GET['code'])) {
        $code_cart = $_GET['code'];
        $sql_update ="UPDATE tbl_cart SET huydonhang=0 WHERE code_cart='".$code_cart."'";
        $query = mysqli_query($mysqli,$sql_update);

        header('Location:../../index.php?quanly=lichsudonhang');
    }
?>