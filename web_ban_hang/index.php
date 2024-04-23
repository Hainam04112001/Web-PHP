<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Website bán hàng </title>

    <link rel="stylesheet" type ="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" type ="text/css" href="./Css/style.css">
    <title>Website bán sách tin học Hải Nam</title>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
        <?php
            header_remove();
            session_start();
            include("Admincp/Config/config.php");
            include("Page/header.php");
            include("Page/menu.php");
            include("Page/main.php");
            include("Page/footer.php");
        
        ?>
        </div>

    </div>
    <!-- <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    
        // Show the first tab and hide the rest
        $('#tabs-nav li:first-child').addClass('active');
        $('.tab-content').hide();
        $('.tab-content:first').show();

        // Click function
        $('#tabs-nav li').click(function(){
        $('#tabs-nav li').removeClass('active');
        $(this).addClass('active');
        $('.tab-content').hide();
        
        var activeTab = $(this).find('a').attr('href');
        $(activeTab).fadeIn();
        return false;
        });
    </script> -->
    <script type="text/javascript">
    $(document).ready(function() {

    var back = $(".prev");
    var next = $(".next");
    var steps = $(".step");

    next.bind("click", function() {
    $.each(steps, function(i) {
        if (!$(steps[i]).hasClass('current') && !$(steps[i]).hasClass('done')) {
        $(steps[i]).addClass('current');
        $(steps[i - 1]).removeClass('current').addClass('done');
        return false;
        }
    })
    });
    back.bind("click", function() {
    $.each(steps, function(i) {
        if ($(steps[i]).hasClass('done') && $(steps[i + 1]).hasClass('current')) {
        $(steps[i + 1]).removeClass('current');
        $(steps[i]).removeClass('done').addClass('current');
        return false;
        }
    })
    });

    })
</script>
</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

</html>