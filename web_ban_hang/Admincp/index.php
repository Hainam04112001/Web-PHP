<?php
    session_start();
    if(!isset($_SESSION['dangnhap'])){
        header('Location:login.php');
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admincp</title>
    <link rel="stylesheet" href="./Css/styleadmin.css">
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
</head>
<body>
<div class="swapper">
<!-- <h3 class="title_admin">Chào mừng bạn đến với trang Admin</h3> -->
        <?php
            include("./Config/config.php");
            // include("./moludes/header.php");
            include("./moludes/menu.php");
            include("./moludes/main.php");
            // include("./moludes/footer.php");
        ?>
</div>


    <script type ="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="//cdn.ckeditor.com/4.21.0/standard/ckeditor.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
    <script>
        CKEDITOR.replace( 'thongtinlienhe' );
        CKEDITOR.replace( 'tomtat' );
        CKEDITOR.replace( 'noidung' );
    </script>

    <!-- <script type="text/javascript">
    $(document).ready(function(){

        thongke();
        var char = new Morris.Area({
        
        element: 'chart',
       
        
        xkey: 'date',

        ykeys: ['date','order','sales','quantity'],
      
        labels: ['Đơn hàng','Doanh thu','Số lượng bán ra']
        });
        function thongke(){
            var text = '365 ngày qua';
            $('#text-date').text(text);
            $.ajax({
                url:"moludes/thongke.php",
                method:"POST",
                dataType:"JSON",

                success:function(data){
                    char.setData(data);
                    $('#text-date').text(text);
                }
            });
        }
    });
    </script> -->
</body>
</html>