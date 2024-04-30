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
    ['email' => 'jotaro.kujo@gmail.com', 'password' => ''],
    ['email' => 'semi.lovato@gmail.com', 'password' => '']
  ],
  'doctors' => [
    ['email' => 'john.doe@gmail.com', 'password' => ''],
    ['email' => 'jane.smith@gmail.com', 'password' => '']
  ],
  'front_desk_staff' => [
    ['email' => 'charlie.brown@gmail.com', 'password' => ''],
    ['email' => 'david.davis@gmail.com', 'password' => '']
  ],
  'nurses' => [
    ['email' => 'alice.johnson@gmail.com', 'password' => ''],
    ['email' => 'bob.williams@gmail.com', 'password' => '']
  ],
  'patient' => [
    ['email' => 'jebron.lames@gmail.com', 'password' => ''],
    ['email' => 'bames.jond@gmail.com', 'password' => ''],
    ['email' => 'corn.cena@gmail.com', 'password' => ''],
    ['email' => 'jichael.mackson@gmail.com', 'password' => '']
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
