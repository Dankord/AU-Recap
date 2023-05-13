<?php

    session_start();
    if (isset($_SESSION['id']))
        header('location: ../home.php');

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>sign up</title>
    <link rel = "stylesheet" href = "resource/css/signup.css">
    <link rel = "stylesheet" href = "resource/css/nav2.css">
</head>
<body>
    <nav class="top">
        <img class="logo" src="resource/img/Arellano hi-res_0.png">
        <div>
            <a href="index.php" class="navlinks">Home</a>
        </div>
    </nav>
    <div class="form">
        <div class="form-box">
            <div class="form-value">
                <form action="controllers/SignupController.php" method="post">
                    <h2>Sign up</h2>
                    <div class="inputbox">
                        <input type="name" id="name" name="name" required>
                        <label for="name">Full Name</label>
                    </div>
                    <div class="inputbox">
                        <input type="email" id="email" name="email" required>
                        <label for="email">Email</label>
                    </div>
                    <div class="inputbox">
                        <input type="password" id="password" name="password" required>
                        <label for="password">Password</label>
                    </div>
                    <div class="inputbox">
                        <input type="password" id="confirm_password" name="confirm_password" required>
                        <label for="confirm_password">Confirm Password</label>
                    </div>
                    <button input type="submit">Sign up</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>