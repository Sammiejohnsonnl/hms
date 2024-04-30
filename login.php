<?php
// Database connection
$servername = "127.0.0.1"; // Changed to the host in your database dump
$username = "root";
$password = "";
$dbname = "hms";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Define users
$users = [
  'admin' => [
    ['email' => 'jotaro.kujo@gmail.com', 'password' => '1234'],
    ['email' => 'semi.lovato@gmail.com', 'password' => '12345']
  ],
  'doctors' => [
    ['email' => 'john.doe@gmail.com', 'password' => '321'],
    ['email' => 'jane.smith@gmail.com', 'password' => '3211']
  ],
  'front_desk_staff' => [
    ['email' => 'charlie.brown@gmail.com', 'password' => '321'],
    ['email' => 'david.davis@gmail.com', 'password' => '3211']
  ],
  'nurses' => [
    ['email' => 'alice.johnson@gmail.com', 'password' => '321'],
    ['email' => 'bob.williams@gmail.com', 'password' => '3211']
  ],
  'patient' => [
    ['email' => 'jebron.lames@gmail.com', 'password' => '123'],
    ['email' => 'bames.jond@gmail.com', 'password' => '234'],
    ['email' => 'corn.cena@gmail.com', 'password' => '345'],
    ['email' => 'jichael.mackson@gmail.com', 'password' => '456']
  ]
];

foreach ($users as $table => $userList) {
  foreach ($userList as $user) {
    // This is the password you got from user input
    $password_from_user = $user['password'];

    // Hash the password
    $hashed_password = password_hash($password_from_user, PASSWORD_DEFAULT);

    // Now you can store $hashed_password in your database
    $sql = "UPDATE $table SET password = '$hashed_password' WHERE email = '{$user['email']}'";

    if ($conn->query($sql) === TRUE) {
      echo "Password updated successfully for {$user['email']}";
    } else {
      echo "Error: " . $sql . "<br>" . $conn->error;
    }
  }
}

$conn->close();
?>
