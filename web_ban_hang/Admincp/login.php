<?php
    session_start();
    include('Config/config.php');
    if(isset($_POST['dangnhap'])){
        $taikhoan = $_POST['usename'];
        $matkhau = md5($_POST['password']);
        $sql = "SELECT * FROM tbl_admin WHERE usename='".$taikhoan."' AND password = '".$matkhau."' LIMIT 1";
        $row = mysqli_query($mysqli,$sql);
        $count = mysqli_num_rows($row);
        if($count>0){
            $_SESSION['dangnhap'] = $taikhoan;
            header("Location:index.php");
        }else{
            echo '<script>alert("Tài khoản hoặc mật khẩu không đúng, vui lòng nhập lại.")</script>';
            header("Location:login.php");
        }

    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập Admin</title>
    <script src="https://kit.fontawesome.com/8533c91442.js" crossorigin="anonymous" ></script>
    <style type="text/css">
        /* body{
            background:#f2f2f2;
        }
        .wrapper-login {
            width: 19%;
            margin: 0 auto;
        }
        table.table-login {
            width: 100%;
        }
        table.table-login tr td {
            padding: 5px;
        } */
        body{
            background-image: url('https://i.pinimg.com/originals/38/6f/47/386f47c88a7aaa497ec6edc1c02cc9b6.jpg');
            background-size:cover;
            background-repeat: no-repeat;
            background-position: center;
            display: flex;
            justify-content: center;
            align-items:center;
        }
        p{
            position: relative;
            color:yellow;
            font-size: 20px;
            font-family: 'Segoe UI', Tahoma, Geneva, Vardana, sans-serif;
            left: 5px;
        }
        .topHeader{
            font-size: 30px;
            position: relative;
            left:10px;
            bottom: 40px;
            font-family: Comic Sans MS
        }
        .formBox{
            display: flex;
            position: relative;
            padding: 80px;
            width: 400px;
            height: 450px;
            background: transparent;
            justify-content: center;
            border: 2px solid white;
            border-radius: 20px;
            backdrop-filter: blur(3px);
        }
        .formContainer{
            display: flex;
            flex-direction: column;
        }
        .inputText{
            height: 40px;
            width: 100%;
            border: none;
            outline: none;
            border-radius: 30px;
            padding: 0 0 0 20px;
            opacity: 90%;
            color: black;
        }
        ::webkit-input-placeholder{
            color: rgb(49,48,48);
        }
        i{
            position: relative;
            top: -29px;
            right: 20px;
        }
        #submitButton{
            height: 40px;
            width: 100%;
            width: 100%;
            border: none;
            outline: none;
            border-radius: 30px;
            color: white;
            font-family: Comic Sans MS;
            background-color: black;
            cursor: pointer;
        }
        #forgotPW{
            position: relative;
            color: yellow;
            font-size: 20px;
            font-family: 'Segoe UI', Tahoma, Geneva, Vardana, sans-serif;
            left: 115px;
        }
    </style>
</head>
<body>
<div class="formBox">
    <div class="formContainer">
        <div class="topHeader">
            <h1>Login Admin</h1>
        </div>
    <form action ="" autocomplete="off" method="POST">
        <!-- <table border="1" class="table-login" style="text-align: center; border-collapse: collapse;"> -->

            <!-- <tr>
                <td>Tài Khoản</td>
                <td><input type ="text" name = "usename"></td>
            </tr>

            <tr>
                <td>Mật Khẩu</td>
                <td><input type ="password" name = "password"></td>
            </tr>

            <tr>
                <td colspan ="2"><input type ="submit" name ="dangnhap" value ="Đăng Nhập"></td>
            </tr> -->

            <input type="text" class="inputText" placeholder="Tài Khoản...." name = "usename" require>
            <i class="fa-solid fa-user"></i><br>
            <input type="password" class="inputText" placeholder="Mật Khẩu..." name = "password" require>
            <i class="fa-sharp fa-solid fa-key"></i><br>
            <input type="submit" name="dangnhap" id="submitButton" value ="Đăng Nhập">
        <!-- </table> -->
    </form><br>
    </div>
</div>
<script type ="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>  
</body>
</html>
