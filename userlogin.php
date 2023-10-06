<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "asset_mgmt";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if the logout button is clicked
if (isset($_POST["logout"])) {
    // Clear the session and redirect to the login page
    session_start();
    session_unset();
    session_destroy();
    setcookie('UserID', '', time() - 3600); // Unset the cookie by setting an expiration time in the past
    header("Location: userlogin.php");
    exit;
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $password = md5($_POST["password"]); // Convert the password to MD5 form

    $sql = "SELECT * FROM user_info WHERE USERNAME = '$username' AND PASSWORD = '$password'";
    $result = $conn->query($sql);

    if ($result->num_rows == 1) {
        // Login successful
        setcookie('UserID', $username, time()+3600);

        header("Location: homepage.php");
        exit;
    } else {
        $loginError = "Invalid username or password";
    }
} else {
    if (isset($_COOKIE["UserID"])) {
        $username = $_COOKIE["UserID"];
        echo "Welcome back, " . $username;
    }
}

$conn->close();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f1f1f1;
            padding: 20px;
        }

        .container {
            max-width: 400px;
            margin: 0 auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border-radius: 3px;
            border: 1px solid #cccccc;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4caf50;
            border: none;
            color: #ffffff;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            border-radius: 3px;
        }

        .error-message {
            color: #ff0000;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Login</h1>
        <form method="post" action="userlogin.php">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required><br><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br><br>

            <input type="submit" value="Login">

            <?php if(isset($loginError)): ?>
                <p class="error-message"><?php echo $loginError; ?></p>
            <?php endif; ?>
        </form>
    </div>
</body>
</html>
