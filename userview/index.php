<?php

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
    <title>HOMEO MEDICA</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />
    <link rel="stylesheet" href="./resources/css/style.css" />
    <link rel="stylesheet" href="./resources/css/responsive.css" />


    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>

<body>
    <div class="index-header">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="siteFooterBar">
                    <div class="content">
                        <img src="./resources/images/Ulala s.png" width="50px" height="50px" align="center">

                    </div>
                </div>
                <a class="navbar-brand" href="index.php">HOMEO MEDICA</a>
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
        <div class="section header-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-5">
                        <div class="header-section-description">
                            <h2 class="header-color">
                                Find the Best <span class="highlight-red">Pet Solutions</span> Here.</h2>
                            <p class="text-color">
                                Whatever your pet’s healthcare needs, we’re prepared to assist.Commodo odio
                                aenean sed adipiscing diam donec adipiscing tristique.
                            </p>
                            <?php
                            if (Session::get('name')) {
                            ?>
                                <a href="profile.php" class="btn btn-default my-2 my-sm-0 px-5 py-2 primary-button"><?php echo Session::get('name'); ?>
                                </a>

                            <?php
                            } else { ?>
                                <a href="login.php" class="btn btn-default my-2 my-sm-0 px-5 py-2 primary-button">Login</a>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="header-section-image">
                            <img class="img-fluid" src="./resources/images/pretty-girl-embarcing-cat-dog 1.png" alt="" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="section about-section">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="about-img">
                        <img src="./resources/images/about-img.png" alt="" />
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="about-content">
                        <h2 class="section-header">About Us</h2>
                        <p class="text-color">
                            We have a number of resources for you to learn about how to take excellent care of your pet. Browse around our “All Question” section and look at our posts and images. If you have any questions, you can ask to our specialist renowned doctors. We’ll quickly get back to you and address any questions/concerns you may have about your pet.Architecto, adipisci itaque fugiat
                            voluptas aut labore consequatur praesentium neque fuga vitae
                            libero dolorem illo officia repellat, dolor atque molestias
                            dolores perferendis temporibus voluptate.
                            </br>We understand that our pets are our family members, and we recognize the need to ensure they receive the absolute best care possible.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="section why-us-section">
        <div class="container">
            <h2 class="section-header">Why Homeo Medica</h2>
            <div class="row">
                <div class="col-md-4">
                    <div class="why-us-card">
                        <h4>
                            <i class="fa fa-user-md" aria-hidden="true"></i> Best Doctors
                        </h4>
                        <p>
                            It focuses on the emotional and empathetic side of veterinary practices and pet-owning, giving advice to pet owners who may inadvertently find themselves in bad situations.We focus on ongoing improvement.
                        </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="why-us-card">
                        <h4>
                            <i class="fa fa-users" aria-hidden="true"></i> Helpful Community
                        </h4>
                        <p>
                            We use a scientific, evidence-based approach to produce the best outcomes in all we do. We care for each other which contributes to our unique culture – it’s the key to our future.
                        </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="why-us-card">
                        <h4><i class="fas fa-clinic-medical"></i> Fastest Support</h4>
                        <p>
                            We are available 24 hours 7 days a week, immediate solutions available.We are here to help, so feel free to ask us if you have any questions about your pets injury and violences.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="section need-help-section">
        <div class="container">
            <h2 class="section-header text-center">Need any support?</h2>
            <div class="row">
                <div class="col-md-6">
                    <div class="need-help-card">
                        <h4>Ask any query about your pet</h4>
                        <p>
                            Homeo Medica is the leading source of online veterinarian advice.
                            Obtain brief answers or chat with a veterinarian privately about your dog, cat or any other pet
                        </p>
                        <button class="btn btn-default my-2 my-sm-0 px-5 py-2 need-help-button">Ask question
                        </button>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="need-help-card">
                        <h4>Need emergency medical?</h4>
                        <p>
                            Homeo Medica is the leading source of online veterinarian advice.
                            Obtain brief answers or chat with a veterinarian privately about your dog, cat or any other pet
                        </p>
                        <button class="btn btn-default my-2 my-sm-0 px-5 py-2 need-help-button">Find hospital
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- <?php include_once "./userview/footer.php"; ?> -->
    <footer>
        <div class="section footer-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="siteFooterBar">
                            <div class="content">
                                <img src="./resources/images/Ulala s.png" width="100px" height="100px" align="center">

                            </div>
                        </div>
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