<?php
    include('controllers/db.php');
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
        <a href="controllers/LogoutController.php">
            <img class="widget" src="resource/img/widget.svg">
        </a>
   </nav>
   <div class="category">
        <img class="interest" src="resource/img/interest.svg">
        <h3 class="ca-text">Categories</h3>
   </div>
    <div class="strands">
        <a href="#" class="category-button active">ICT</a>
        <a href="stem.php" class="category-button">STEM</a>
        <a href="humss.php" class="category-button">HUMSS</a>
        <a href="abm.php" class="category-button">ABM</a>
        <a href="sport.php" class="category-button">SPORTS</a>
    </div>
    <div class="main-content">
        
        <?php
            $query = "SELECT id, title, description, thumbnail FROM ict";
            $result = mysqli_query($conn, $query);
        
            // Check if the query was successful
            if ($result) {  
                // Loop through the result set
                while ($row = mysqli_fetch_assoc($result)) {
                    $title = $row['title'];
                    $description = $row['description'];
                    $thumbnail = $row['thumbnail'];
                    $id = $row['id'];
                    
                    // Display the retrieved data
                    echo "
                        <a href='watch.php?strand=ict&video_id=$id' class='column'>
                            <img class='thumbnail' src='$thumbnail' alt='Thumbnail'>
                            <div class='title-container'>
                                <p class='vidtitle'>$title</p>
                            </div>
                        </a>
                    ";
                }
        
                // Free the result set
                mysqli_free_result($result);
            } else {
                // Display an error message if the result fails
                echo "Error executing the query: " . mysqli_error($conn);
            }

            mysqli_close($conn);
        ?>
    </div>
    
</body>
</html>