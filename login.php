<?php
$servername = "127.0.0.1";
$username = "root";
$password = "";
$dbname = "hms";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $email = $_POST['email'];
  $password_from_user = $_POST['password'];
  $sql = "SELECT password FROM admin WHERE email = '$email'";
  $result = $conn->query($sql);

  if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
      $hashed_password_from_database = $row["password"];
    }

    // Check if the password is correct
    if (password_verify($password_from_user, $hashed_password_from_database)) {
      echo 'Password is valid!';
    } else {
      echo 'Invalid password.';
    }
  } else {
    echo "No user found with this email.";
  }
}

$conn->close();
?>