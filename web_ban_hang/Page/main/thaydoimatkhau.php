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
        if(isset($_POST['doimatkhau'])){
            $taikhoan = $_POST['email'];
            $matkhau_cu = md5($_POST['password_cu']);
            $matkhau_moi = md5($_POST['password_moi']);
            $sql = "SELECT * FROM tbl_dangky WHERE email='".$taikhoan."' AND matkhau = '".$matkhau_cu."' LIMIT 1";
            $row = mysqli_query($mysqli,$sql);
            $count = mysqli_num_rows($row);
            if($count>0){
                $sql_update = mysqli_query($mysqli, "UPDATE tbl_dangky SET matkhau ='".$matkhau_moi."' WHERE email='".$taikhoan."'");
                echo '<p style ="color:green">Mật khẩu đã được thay đổi.</p>';
            }else{
                echo '<p style ="color:red">Tài khoản hoặc mật khẩu cũ không đúng, vui lòng nhập lại.</p>';
            }

        }
    ?>
    <!-- <form action ="" autocomplete="off" method="POST">
            <table border="1" class="table-login" style="text-align: center; border-collapse: collapse;">
                <tr>
                    <td colspan ="2"><h3>Đổi mật khẩu Admin</h3></td>
                </tr>

                <tr>
                    <td>Tài Khoản</td>
                    <td><input type ="text" name = "email"></td>
                </tr>

                <tr>
                    <td>Mật Khẩu Cũ</td>
                    <td><input type ="text" name = "password_cu"></td>
                </tr>

                <tr>
                    <td>Mật Khẩu Mới</td>
                    <td><input type ="text" name = "password_moi"></td>
                </tr>

                <tr>
                    <td colspan ="2"><input type ="submit" name ="doimatkhau" value ="Đổi Mật Khẩu"></td>
                </tr>

            </table>
        </form> -->

        <div class="wrapper">
        <div class="container">
            <div class="row">
                <form action="" class="col-md-6 bg-light p-3 my-3" method ="POST">
                    <h3 class="text-center text-uppercase h3 py-3">Thay đổi mật khẩu</h3>
                    <div class="form-group">
                        <label for="taikhoan">Tài khoản</label>
                        <input type="text" name="email" id="taikhoan" class="form-control" required>
                    </div>

                    <div class="form-group">
                        <label for="matkhaucu">Mật khẩu cũ</label>
                        <input type="password" name="password_cu" id="matkhaucu" class="form-control" required>
                    </div>

                    <div class="form-group">
                        <label for="matkhaumoi">Mật khẩu mới</label>
                        <input type="password" name="password_moi" id="matkhaumoi" class="form-control" required>
                    </div>

                    <input class="btn-primary btn btn-block" type="submit" name ="doimatkhau" value="Đổi mật khẩu">
                </form>
            </div>
        </div>
    </div>

</body>
</html>
