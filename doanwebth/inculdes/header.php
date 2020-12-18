<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Modist - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,400,700" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/infomation.css">
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
        <div class="container">
          <a class="navbar-brand" href="index.php" style="color:red;font-weight:bold;font-size:20px;">Modist</a>
          <button style="color:red;font-weight:bold;font-size:20px;" class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
          </button>

          <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <?php 

                    if(!isset($_SESSION["kh"]))
                    {
                      echo ' <li class="nav-item">
                  <a style="color:red;font-weight:bold;font-size:20px;" href="login.php" class="nav-link tm-nav-link tm-text-white">
                   Login</a></li>';
                    }
                    else{
                       echo ' <li class="nav-item">
                  <a style="color:red;font-weight:bold;font-size:20px;" href="info.php?page=show_info" class="nav-link tm-nav-link tm-text-white">
                 '.$_SESSION["kh"]["tenKhachHang"].'</a></li>';
                       echo ' <li class="nav-item">
                  <a style="color:red;font-weight:bold;font-size:20px;" href="logout.php" class="nav-link tm-nav-link tm-text-white">
                  Logout</a></li>';
                    }
                    ?>

              <li class="nav-item active"><a style="color:red;font-weight:bold;font-size:20px;" href="index.php" class="nav-link">Home</a></li>

              <li class="nav-item dropdown">
              <a style="color:red;font-weight:bold;font-size:20px;" class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Shop</a>
              <div class="dropdown-menu" aria-labelledby="dropdown04">
                <a style="color:red;font-weight:bold;font-size:20px;" class="dropdown-item" href="shop.php">Shop</a>
              </div>
            </li>
              <li  class="nav-item"><a href="about.php" style="color:red;font-weight:bold;font-size:20px;" class="nav-link">About</a></li>
              <li class="nav-item"><a href="contact.php" style="color:red;font-weight:bold;font-size:20px;" class="nav-link">Contact</a></li>
              <li class="nav-item cta cta-colored"><a href="cart.php" style="color:red;font-weight:bold;font-size:20px;" class="nav-link"><span class="icon-shopping_cart"></span>[0]</a></li>

            </ul>
          </div>
        </div>
      </nav>
    <!-- END nav -->