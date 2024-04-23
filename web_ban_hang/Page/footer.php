<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type ="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style type="text/css">
        .container{
            margin:0;
            padding: 0;
            box-sizing:border-box;
            font-family: "Times New Roman", Times, serif;
        }
        ol, ul {
            padding-left: 0rem;
        }
        ul {
        list-style: none;
        }
        body{
            display: grid;
            justify-content: end;
            align-content:end;
            min-height:100vh;
        }
        footer{
            position: relative;
            width:100%;
            height: auto;
            padding: 50px 100px;
            background: #3044a5;
        }
        footer .container{
            width:100%;
            display: grid;
            grid-template-columns:2fr 1fr 1fr 1fr;
            grid-gap:20px;
        }
        footer .container .sec h2{
            position: relative;
            color: #fff;
            font-weight:500;
            margin-bottom:15px;
        }
        footer .container .sec h2::before{
            content:'';
            position: absolute;
            bottom: -5px;
            left:0;
            width: 50px;
            height:2px;
            background: #ffeb3b;
        }
        footer .container .sec p{
            color:#fff;
        }
        .sci{
            margin-top:20px;
            display:grid;
            grid-template-columns:repeat(4,50px);
            grid-gap:10px;
        }
        .sci li{
            list-style: none;
        }
        .sci li a:hover{
            background: #6380fe;
        }
        .sci li a{
            display: inline-block;
            width: 48px;
            height: 48px;
            background: #3e56cb;
            display:grid;
            align-content:center;
            justify-content:center;
            text-decoration:none;
            border-radius:4px;
        }
        .sci li a .fa-brands{
            color: #fff;
            font-size:20px;
        }
        .quicklinks li{
            list-style: none;
        }
        .quicklinks li a{
            color:#f7f7f7;
            text-decoration: none;
            margin-bottom: 10px;
            display:inline-block;
        }
        .quicklinks li a:hover{
            color:#ffeb3b;
        }
        .info{
            position: relative;
        }
        .info li{
            display:grid;
            grid-template-columns:30px 1fr;
            margin-bottom:16px;
        }
        .info li span:nth-child(1){
            color: #fff;
            font-size:20px;
        }
        .info li span{
            color: #fff;
        }
        .info a {
            color: #f7f7f7;
            text-decoration: none;
        }
        .info a:hover{
            color: #ffeb3b;
        }
        .copyrightText{
            width:100%;
            background: #1f3389;
            padding: 8px 100px;
            text-align:center;
            color: #fff;
        }

        @media (max-width: 991px){
            footer{
                padding:40px;
            }
            footer .container{
                grid-template-columns: repeat(2,1fr);
            }
            .copyrightText{
                padding 8px 40px;
            }
        }
        @media (max-width:768px){
                footer .container{
                grid-template-columns: repeat(2,1fr);
            }
        }
    </style>
</head>
<body>
<!-- <div class="clear"></div> -->
    <!-- <div class="footer">
        <p class = "footer_copyright">Copyright by HaiNam deverlop 2023</p>
    </div>  -->
    <footer>
        <div class="container">
            <div class="sec aboutus">
                <h2>Thông Tin</h2>
                <p>Công ty Cổ phẩn Công nghệ LHN bắt đầu với website Bookstore từ tháng 12/2022. Từ khi thành lập đến nay, 
                    Bookstore luôn là Nhà sách trên mạng hàng đầu tại Việt Nam và được ghi nhận từ nhiều cơ quan, tổ chức trong 
                    và ngoài nước. Quan trọng hơn hết, Bookstore được hàng triệu khách hàng thường xuyên mua sắm trực tuyến đặt sự tin 
                    tưởng và tín nhiệm của mình trong suốt hơn 10 năm qua để Bookstore luôn được phục vụ và phát triển.
                </p>
                <ul class="sci">
                    <li><a href="#"><i class="fa-brands fa-facebook"></i></a></li>
                    <li><a href="#"><i class="fa-brands fa-instagram"></i></a></li>
                    <li><a href="#"><i class="fa-brands fa-twitter"></i></a></li>
                    <li><a href="#"><i class="fa-brands fa-youtube"></i></a></li>
                </ul>
            </div>

            <div class="sec quicklinks">
                <h2>Menu</h2>
                <ul>
                    <li><a href="#">Trang Chủ</a></li>
                    <li><a href="#">Giới Thiệu</a></li>
                    <li><a href="#">Giỏ Hàng</a></li>
                    <li><a href="#">Danh Mục SP</a></li>
                    <li><a href="#">Đăng kí</a></li>
                </ul>
            </div>

            <div class="sec quicklinks">
                <h2>Hỗ Trợ</h2>
                <ul>
                    <li><a href="#">SĐT hỗ trợ: 0328297517</a></li>
                    <li><a href="#">SĐT kĩ thuật: 0394504723</a></li>
                    <li><a href="#">Gmail hỗ trợ: lehainam0411@gmail.com</a></li>
                </ul>
            </div>

            <div class="sec contact">
                <h2>Liên Hệ</h2>
                <ul class="info">
                    <li>
                        <span><i class="fa-solid fa-location-dot"></i></span>
                        <span>150A/4 Lai Vung Dong Thap</span>
                    </li>

                    <li>
                        <span><i class="fa-solid fa-phone"></i></span>
                        <p><a href="SDT:0328297517">0328297517</a><br></p>
                    </li>

                    <li>
                        <span><i class="fa-regular fa-envelope"></i></span>
                        <p><a href="mailto:hainam@gmail.com">hainam@gamil.com</a><br></p>
                    </li>
                </ul>
            </div>
        </div>
    </footer>
    <div class="copyrightText">
        <p>© Bản quyền thuộc về tập đoàn LHN </p>
    </div>
</body>
</html>
