<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>

  <h3>Thêm danh mục sản phẩm</h3>
  </style>
  <table class="table table-bordered border-dark ttable-success table-striped">
  <form method="POST" action ="moludes/quanlydanhmuc/xuly.php">
    <tr>
      <td>Tên danh mục</td>
      <td><input type="text" name="tendanhmuc" required></td>
    </tr>

    <tr>
      <td>Thứ tự</td>
      <td><input type="text" name ="thutu" required></td>
    </tr>

    <tr >
      <td colspan="2"><input type="submit" name="themdanhmuc" value ="Thêm danh mục sản phẩm"></td>
    </tr>    
  </form>

  </table>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
