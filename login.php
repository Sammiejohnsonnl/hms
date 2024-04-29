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

// User data
$users = [
    'Admin' => [
        ['jotaro.kujo@gmail.com', '1234'],
        ['semi.lovato@gmail.com', '12345']
    ],
    'Doctors' => [
        ['john.doe@gmail.com', '321'],
        ['jane.smith@gmail.com', '3211']
    ],
    'Front_Desk_Staff' => [
        ['charlie.brown@gmail.com', '321'],
        ['david.davis@gmail.com', '3211']
    ],
    'Nurses' => [
        ['alice.johnson@gmail.com', '321'],
        ['bob.williams@gmail.com', '3211']
    ],
    'Patient' => [
        ['jebron.lames@gmail.com', '123'],
        ['bames.jond@gmail.com', '234'],
        ['corn.cena@gmail.com', '345'],
        ['jichael.mackson@gmail.com', '456']
    ]
];

// Insert user data into each table
foreach ($users as $table => $user_data) {
    foreach ($user_data as $user) {
        $email = $user[0];
        $password = $user[1];

        // Hash the password
        $hashed_password = password_hash($password, PASSWORD_DEFAULT);

        // Insert hashed password into the table
        $sql = "INSERT INTO $table (email, password) VALUES ('$email', '$hashed_password')";

        if ($conn->query($sql) === TRUE) {
            echo "New record created successfully in $table table.";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }
}

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // This is the email and password you got from the form
    $email_from_form = $_POST['email'];
    $password_from_form = $_POST['password'];

    // Get the hashed password from the database
    $sql = "SELECT * FROM Admin WHERE email = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $email_from_form);
    $stmt->execute();
    $result = $stmt->get_result();
    $user = $result->fetch_assoc();

    // Check if the password is correct
    if (password_verify($password_from_form, $user['password'])) {
        // Password is valid, start a new session and save the user's email to the session
        session_start();
        $_SESSION['email'] = $user['email'];

        // Redirect to the admin page
        header("Location: admin.html");
        exit;
    } else {
        // Invalid password
        echo 'Invalid password.';
    }
}

$conn->close();
?>
