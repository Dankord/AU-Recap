<?php 

    include('controllers/db.php');
    session_start();

    if (!isset($_SESSION['id']))
        header('location: ../login.php');

    // Check if the URL parameters exist
    if(isset($_GET['strand']) && isset($_GET['video_id'])) {
        // Retrieve the values of the URL parameters
        $strand = $_GET['strand'];
        $videoId = $_GET['video_id'];
        $query = "SELECT title, description, path FROM $strand WHERE id = $videoId LIMIT 1";
        $result = mysqli_query($conn, $query);

        if ($result){
            $row = mysqli_fetch_assoc($result);
            $title = $row['title'];
            $description = $row['description'];
            $path = $row['path'];

            $newQuery = "SELECT thumbnail, id FROM $strand WHERE id != $videoId LIMIT 3";
            $newResult = mysqli_query($conn, $newQuery);
        } else {
            header('location: home.php');
        }
    } else {
        // Display an error message if parameter is missing
        header('location: home.php');
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $title ?></title>
    <link rel = "stylesheet" href = "resource/css/nav3.css">
    <link rel = "stylesheet" href = "resource/css/uiclick.css">
</head>
<body>
    <nav class="top">
        <div class="navtitle">
        <img class="logo" src="resource/img/Arellano hi-res_0.png">
        <p class="recap">AU Recap</p>
        </div>
        <a href="controllers/LogoutController.php">
            <img class="widget" src="resource/img/widget.svg">
        </a>    
   </nav>
   <div class="front">
        <div class="left">
            <!-- <img class="main-video" src="resource/img/ict/arithmetic C.jpg"> -->
            <!-- video -->
            <video width="320" height="240" controls class="main-video">
                <source src="<?php echo $path ?>" type="video/mp4">
                Your browser does not support the video tag.
            </video>
            <p class="title"><?php echo $title ?></p>
            <p class="description"><?php echo $description ?></p>
        </div>
        <div class="nextvids">
            <?php
                if ($newResult){
                    while ($row = mysqli_fetch_assoc($newResult)) {
                        $thumb = $row['thumbnail'];
                        $id = $row['id'];
                    
                        echo "
                            <a href='watch.php?strand=$strand&video_id=$id' class='column'>
                                <img class='sidevid' src='$thumb'>
                            </a>
                        ";
                    }

                    mysqli_free_result($newResult);
                }
            ?>
        </div>
   </div>
</body>
</html>
