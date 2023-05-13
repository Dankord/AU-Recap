<?php
include('db.php');
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
    $email = test_input($_POST["email"]);
    $password = test_input($_POST["password"]);

    if (empty($email) || empty($password)) {
        $_SESSION["error"] = "Email and password are required";
        header("Location: ../login.php");
        exit();
    }

    $sql = "SELECT id, email, password FROM user WHERE email = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows == 1) {
        $row = $result->fetch_assoc();

        if (password_verify($password, $row["password"])) {
            $_SESSION["id"] = $row["id"];
            header("Location: ../home.php");
            exit();
        } else {
            $_SESSION["error"] = "Invalid email or password";
            header("Location: ../login.php");
            exit();
        }
    } else {
        $_SESSION["error"] = "Invalid email or password";
        header("Location: ../login.php");
        exit();
    }
}

function test_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}
?>
