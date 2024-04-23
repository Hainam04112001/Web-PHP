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

        if(isset($_POST['dangnhap'])){
            $email = $_POST['email'];
            $matkhau = md5($_POST['password']);
            $sql = "SELECT * FROM tbl_dangky WHERE email='".$email."' AND matkhau = '".$matkhau."' LIMIT 1";
            $row = mysqli_query($mysqli,$sql);
            $count = mysqli_num_rows($row);
            if($count>0){
                $row_data = mysqli_fetch_array($row);
                $_SESSION['dangky'] = $row_data['tenkhachhang'];
                $_SESSION['id_khachhang'] = $row_data['id_dangki'];
                $url="index.php?quanly=giohang";
                if(headers_sent()){
                    die('<script type ="text/javascript">window.location.href="'.$url.'"</script>');
                }
                else{
                    header('Location:$url');
                    die();
                }
                            
                
            }else{
                echo '<p style="color:red">Mật khẩu hoặc Email sai, vui lòng nhập lại.</p>';
            }
        }
    ?>
    <!-- <form action ="" autocomplete="off" method="POST">
            <table border="1" width="50%" class="table-login" style="text-align: center; border-collapse: collapse;">
                <tr>
                    <td colspan ="2"><h3>Đăng nhập khách hàng</h3></td>
                </tr>

                <tr>
                    <td>Tài Khoản</td>
                    <td><input type ="text" size="50" name = "email" placeholder="Email..."></td>
                </tr>

                <tr>
                    <td>Mật Khẩu</td>
                    <td><input type ="password" size="50" name = "password"  placeholder="Mật khẩu..."></td>
                </tr>

                <tr>
                    <td colspan ="2"><input type ="submit" name ="dangnhap" value ="Đăng Nhập"></td>
                </tr>

            </table>
        </form>     -->
        <div class="wrapper">
        <div class="container">
            <div class="row">
                <form action="" class="col-md-6 bg-light p-3 my-3" method ="POST">
                    <h3 class="text-center text-uppercase h3 py-3">Đăng nhập tài khoản</h3>
                    <div class="form-group">
                        <label for="email">Tài khoản</label>
                        <input type="text" name="email" id="email" class="form-control" required>
                    </div>

                    <div class="form-group">
                        <label for="password">Mật khẩu</label>
                        <input type="password" name="password" id="matkhau" class="form-control" required>
                    </div>

                    <input class="btn-primary btn btn-block" type="submit" name ="dangnhap" value="Đăng nhập">
                </form>
            </div>
        </div>
    </div>
</body>
</html>
