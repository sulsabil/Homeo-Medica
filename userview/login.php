<?php

include '../auth/Session.php';

Session::init();

if (Session::get("id") != false) {
    header("Location:index.php");
    exit();
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login | Homeo Medica</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />
    <link rel="stylesheet" href="./resources/css/style.css" />
    <link rel="stylesheet" href="./resources/css/responsive.css" />
</head>

<body>
    <div class="header">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="siteFooterBar">
                    <div class="content">
                        <img src="./resources/images/Ulala s.png" width="50px" height="50px" align="center">

                    </div>
                </div>
                <a class="navbar-brand" href="index.php">Homeo Medica</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                    <ul class="navbar-nav mr-auto ml-auto mt-2 mt-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" href="all-questions.php">All Questions </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="all-doctors.php">All Doctors</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="all-hospitals.php">Hospitals</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
        <div class="title-section">
            <h2>Login</h2>
        </div>
    </div>

    <!-- user profile -->

    <div class="section profile-section">
        <div class="container">
            <div class="row justify-content-md-center">
                <div class="col-md-6">
                    <form id="form-data" enctype="multipart/form-data" method="post">
                        <div class="form-group row">
                            <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control" id="inputEmail3" placeholder="Email" name="email" autocomplete="off" />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" id="inputPassword3" placeholder="Password" name="password" autocomplete="off" />
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-10 offset-md-2">
                                <button id="userLoginBtn" type="submit" class="btn btn-primary">Sign in</button>
                            </div>
                        </div>
                    </form>

                    <p>New here? <a href="registration.php">Signup now</a></p>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <div class="section footer-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <!-- Brand/logo -->
                        <a class="navbar-brand" href="#">
                            <img src="../userview/resources/images/Ulala s.png" alt="logo" style="width:100%;">
                        </a>
                    </div>
                    <div class="col-md-3">
                        <ul>
                            <a class="nav-link" style="color:#ffb548" href="index.php">Home </a>
                            <a class="nav-link" style="color:#ffb548" href="all-questions.php">All Questions </a>
                            <a class="nav-link" style="color:#ffb548" href="all-doctors.php">All Doctors </a>
                            <a class="nav-link" style="color:#ffb548" href="all-hospitals.php">All Hospitals </a>
                        </ul>
                    </div>
                    <div class="col-md-3">
                        <ul>
                            <a class="nav-link" style="color:#ffb548" href="index.php">Login </a>
                            <a class="nav-link" style="color:#ffb548" href="#">About Us </a>
                            <a class="nav-link" style="color:#ffb548" href="#">Why Homeo Medica </a>

                        </ul>
                    </div>
                    <div class="col-md-3">
                        <ul>
                            <a class="nav-link" style="color:#ffb548" href="#">Need Any Support </a>
                            <a class="nav-link" style="color:#ffb548" href="#">Review </a>
                            <a class="nav-link" style="color:#ffb548" href="#">Contact </a>
                        </ul>

                    </div>
                </div>


            </div>
            <div style="text-align: center;">
                <small>&copy; Copyright 2021, Leading University</small>
            </div>
        </div>

    </footer>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <script src="./resources/vendor/jquery/jquery.min.js"></script>

    <script>
        $("#myModal").on("shown.bs.modal", function() {
            $("#myInput").trigger("focus");
        });
    </script>

    <script>
        $(document).ready(function() {
            $(document).on('click', '#userLoginBtn', function() {
                $.ajax({
                    url: '../auth/login.php',
                    method: 'post',
                    data: $("#form-data").serialize(),
                    success: function(response) {
                        console.log(response);
                        if (!response.error) {
                            $("#form-data")[0].reset();
                            window.location = 'index.php';
                        }
                    }
                });
            });
        });
    </script>

</body>

</html>