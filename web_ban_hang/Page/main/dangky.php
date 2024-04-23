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
    <?php
        if(isset($_POST['dangky'])){
            $tenkhachhang = $_POST['hovaten'];
            $email = $_POST['email'];
            $dienthoai = $_POST['dienthoai'];
            $matkhau = md5($_POST['matkhau']);
            $diachi = $_POST['diachi'];
            $sql_dangky = mysqli_query($mysqli,"INSERT INTO tbl_dangky(tenkhachhang,email,diachi,matkhau,dienthoai) VALUE('".$tenkhachhang."',
            '".$email."','".$diachi."','".$matkhau."','".$dienthoai."')");
            if($sql_dangky){
                echo '<p style = "color:green">Bạn đã đăng kí thành công </p>';
                $_SESSION['dangky'] = $tenkhachhang;
                $_SESSION['id_khachhang'] = mysqli_insert_id($mysqli);
                $url="index.php?quanly=giohang";
                if(headers_sent()){
                    die('<script type ="text/javascript">window.location.href="'.$url.'"</script>');
                }
                else{
                    header('Location:$url');
                    die();
                }
            }
        }
    ?>

    <!-- <form action="" method ="POST">
        <table class = "table table-bordered border-dark ttable-success table-striped">
            <tr>
                <td>Họ và tên</td>
                <td><input type="text" size = "50" name ="hovaten"></td>
            </tr>

            <tr>
                <td>Email</td>
                <td><input type="text" size = "50" name ="email"></td>
            </tr>

            <tr>
                <td>Điện thoại</td>
                <td><input type="text" size = "50" name ="dienthoai"></td>
            </tr>

            <tr>
                <td>Địa chỉ</td>
                <td><input type="text" size = "50" name ="diachi"></td>
            </tr>

            <tr>
                <td>Mật khẩu</td>
                <td><input type="text" size = "50" name ="matkhau"></td>
            </tr>

            <tr>
                <td ><input type="submit" name ="dangky" value="Đăng ký"></td>
                <td><a href="index.php?quanly=dangnhap">Đăng nhập nếu có tài khoản</a></td>
            </tr>
        </table>
    </form>     -->
    <div class="wrapper">
        <div class="container">
            <div class="row">
                <form action="" class="col-md-6 bg-light p-3 my-3" method ="POST">
                    <h3 class="text-center text-uppercase h3 py-3">Đăng kí tài khoản</h3>
                    <div class="form-group">
                        <label for="fullname">Họ và tên</label>
                        <input type="text" name="hovaten" id="fullname" class="form-control" required>
                    </div>

                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="text" name="email" id="email" class="form-control" required>
                    </div>

                    <div class="form-group">
                        <label for="dienthoai">Số điện thoại</label>
                        <input type="text" name="dienthoai" id="dienthoai" class="form-control" required>
                    </div>

                    <div class="form-group">
                        <label for="diachi">Địa chỉ</label>
                        <input type="text" name="diachi" id="diachi" class="form-control" required>
                    </div>

                    <div class="form-group">
                        <label for="matkhau">Mật khẩu</label>
                        <input type="password" name="matkhau" id="matkhau" class="form-control" required>
                    </div>

                    <input class="btn-primary btn btn-block" type="submit" name ="dangky" value="Đăng ký">
                    <a class="row justify-content-around p-3" href="index.php?quanly=dangnhap">Đăng nhập nếu có tài khoản</a>
                </form>
            </div>
        </div>
    </div>
</body>
</html>

