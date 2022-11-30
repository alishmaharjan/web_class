<?php
$servername = "localhost";
$username = "alish";
$password = "alish123";
$dbname = "curd";

// Create connection
$conn = new mysqli($servername, $username ,$password ,$dbname);
//Check connection
if ($conn->connect_error) {
    die("connection failed: " . $conn->connect_error);
}
echo "Connected"
?>