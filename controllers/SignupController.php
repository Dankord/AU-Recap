<?php
// Check if the form has been submitted
include('db.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Validate input data
    $name = test_input($_POST["name"]);
    $email = test_input($_POST["email"]);
    $password = test_input($_POST["password"]);
    $confirm_password = test_input($_POST["confirm_password"]);

    // Check if name, email, password, and confirm password are not empty
    if (empty($name) || empty($email) || empty($password) || empty($confirm_password)) {
        echo "All fields are required";
    } else {
        // Check if name is valid
        if (!preg_match("/^[a-zA-Z ]*$/", $name)) {
            echo "Invalid name format";
        } else {
            // Check if email is valid
            if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                echo "Invalid email format";
            } else {
                // Check if password is valid
                if (strlen($password) < 8) {
                    echo "Password must be at least 8 characters long";
                } else {
                    // Check if confirm password matches password
                    if ($password != $confirm_password) {
                        echo "Passwords do not match";
                    } else {
                        // Hash the password
                        $hashed_password = password_hash($password, PASSWORD_DEFAULT);

                        // Insert new user into the user table with the hashed password
                        $sql = "INSERT INTO user (name, email, password) VALUES ('$name', '$email', '$hashed_password')";

                        if (mysqli_query($conn, $sql)) {
                            // Successful sign-up
                            header("Location: ../login.php");
                        } else {
                            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
                        }

                        // Close database connection
                        mysqli_close($conn);
                    }
                }
            }
        }
    }
}

// Function to sanitize input data
function test_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}
?>
