<?php
// This is the password you got from user input
$password_from_user = 'userpassword';

// Hash the password
$hashed_password = password_hash($password_from_user, PASSWORD_DEFAULT);

// Now you can store $hashed_password in your database
?>
<?php
// This is the password you got from user input
$password_from_user = 'userpassword';

// This is the hashed password you got from your database
$hashed_password = get_hashed_password_from_database();

// Check if the password is correct
if (password_verify($password_from_user, $hashed_password)) {
    echo 'Password is valid!';
} else {
    echo 'Invalid password.';
}
?>
