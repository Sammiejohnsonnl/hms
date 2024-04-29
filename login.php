<?php
// Database connection
$servername = "localhost";
$username = "username";
$password = "password";
$dbname = "database";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// This is the password you got from user input
$password_from_user = 'userpassword';

// Hash the password
$hashed_password = password_hash($password_from_user, PASSWORD_DEFAULT);

// Now you can store $hashed_password in your database
$sql = "INSERT INTO Admin (password) VALUES ('$hashed_password')";

if ($conn->query($sql) === TRUE) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

// This is the hashed password you got from your database
// Replace '1' with the id of the user you want to check
$sql = "SELECT password FROM Admin WHERE id = 1";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {
    $hashed_password_from_database = $row["password"];
  }
} else {
  echo "0 results";
}

// Check if the password is correct
if (password_verify($password_from_user, $hashed_password_from_database)) {
    echo 'Password is valid!';
} else {
    echo 'Invalid password.';
}

$conn->close();
?>
