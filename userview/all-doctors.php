<?php

include "../controller/dashboard_value.php";
include '../auth/Session.php';

Session::init();
if (Session::get("user_type") == 'admin') {
    Session::destroy();
    header("Location:index.php");
    exit();
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>All Doctors | Homea Medica</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />
    <link rel="stylesheet" href="./resources/css/style.css" />
    <link rel="stylesheet" href="./resources/css/responsive.css" />


    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <script src="./resources/vendor/jquery/jquery.min.js"></script>

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
                            <a class="nav-link" href="all-hospitals.php">All Hospitals</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="all-pharmacy.php">All Pharmacy</a>
                        </li>
                    </ul>
                    <form class="form-inline my-2 my-lg-0">
                        <?php
                        if (Session::get('name')) {
                        ?>
                            <a href="profile.php" class="btn btn-default my-2 my-sm-0 px-5 py-2 primary-button"><?php echo Session::get('name'); ?>
                            </a>
                        <?php
                        } else { ?>
                            <a href="login.php" class="btn btn-default my-2 my-sm-0 px-5 py-2 primary-button">Login</a>
                        <?php } ?>
                    </form>
                </div>
            </nav>
        </div>
        <div class="title-section">
            <h2>Find the best doctors near you</h2>
        </div>
    </div>

    <div class="all-doctors">
        <div class="container">
            <div class="row">
                <?php
                $result = DashboardValue::getAllDoctor();
                while ($item = mysqli_fetch_assoc($result)) {
                ?>
                    <div class="col-md-4">
                        <div class="doctor-card <?php
                                                if ($item['Total'] == 5 || $item['Total'] == 6) {
                                                    echo 'gold-doc';
                                                } elseif ($item['Total'] == 3 || $item['Total'] == 4) {
                                                    echo 'silver-doc';
                                                } elseif ($item['Total'] == 1 || $item['Total'] == 2) {
                                                    echo 'bronze-doc';
                                                }
                                                ?> ">
                            <a style="text-decoration: none;" href="doctor-details.php?id=<?php echo $item['id']; ?>">
                                <div class="doctor-badge">
                                    <img class="bedge" src="<?php
                                                            if ($item['Total'] == 5 || $item['Total'] == 6) {
                                                                echo './resources/images/gold.png';
                                                            } elseif ($item['Total'] == 3 || $item['Total'] == 4) {
                                                                echo './resources/images/silver.png';
                                                            } elseif ($item['Total'] == 1 || $item['Total'] == 2) {
                                                                echo './resources/images/bronze.png';
                                                            }
                                                            ?>" alt="">
                                    <p><?php
                                        if ($item['Total'] == 5 || $item['Total'] == 6) {
                                            echo 'Gold Bedge Awwarded';
                                        } elseif ($item['Total'] == 3 || $item['Total'] == 4) {
                                            echo 'Silver Bedge Awwarded';
                                        } elseif ($item['Total'] == 1 || $item['Total'] == 2) {
                                            echo 'Bronze Bedge Awwarded';
                                        }
                                        ?></p>
                                </div>
                                <div class="doc-img">
                                    <img <?php
                                            if (DashboardValue::getDoctorImage($item['id']) == null) {
                                            ?> src="resources/images/default_user.png" <?php } else {
                                                                                        ?> src="uploads/<?php echo DashboardValue::getDoctorImage($item['id']); ?>" <?php
                                                                                                                                                                }
                                                                                                                                                                    ?> alt="" />
                                </div>
                                <h4 class="doc-name"><?php echo ucwords($item['name']); ?></h4>

                                <p class="doc-description">
                                    <?php echo $item['email']; ?>
                                    <br>
                                    <?php echo $item['address']; ?>
                                    <br>
                                    <?php echo $item['specialists']; ?>
                                </p>
                            </a>
                        </div>
                    </div>
                <?php
                }
                ?>
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
</body>

</html>