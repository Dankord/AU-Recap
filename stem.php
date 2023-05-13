<?php

    session_start();
    if (!isset($_SESSION['id']))
        header('location: ../login.php');
        
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AU Recap</title>
    <link rel = "stylesheet" href = "resource/css/nav3.css">
    <link rel = "stylesheet" href = "resource/css/home.css">
</head>
<body>
    <nav class="top">
        <div class="navtitle">
        <img class="logo" src="resource/img/Arellano hi-res_0.png">
        <p class="recap">AU Recap</p>
        </div>
        <img class="widget" src="resource/img/widget.svg">
   </nav>
   <div class="category">
        <img class="interest" src="resource/img/interest.svg">
        <h3 class="ca-text">Categories</h3>
   </div>
        <div class="strands">
            <a href="home.php" class="category-button">ICT</a>
            <a href="#" class="category-button active">STEM</a>
            <a href="humss.php" class="category-button">HUMSS</a>
            <a href="abm.php" class="category-button">ABM</a>
            <a href="sport.php" class="category-button">SPORTS</a>
        </div>
</body>
</html>