<?php
session_start();
include('controllers/db.php');

// check if session['error'] has a value, and display it if it does
$error = isset($_SESSION['error']) ? $_SESSION['error'] : '';
unset($_SESSION['error']);

if (isset($_SESSION['id']))
    header('location: ../home.php');

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>log in</title>
    <link rel="stylesheet" href="resource/css/login.css">
    <link rel="stylesheet" href="resource/css/nav2.css">
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
                <form action="controllers/LoginController.php" method="post">
                    <h2>Login</h2>
                    <div class="inputbox">
                        <input type="email" id="email" name="email" required>
                        <label for="email">Email</label>
                    </div>
                    <div class="inputbox">
                        <input type="password" id="password" name="password" required>
                        <label for="password">Password</label>
                    </div>
                    <?php if ($error): ?>
                        <div class="error"><?= $error ?></div>
                    <?php endif; ?>

                    <button input type="submit">Log in</button>
                    <div class="register">
                        <p>Don't have an account?
                            <a href="signup.php">Register</a>
                        </p>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
