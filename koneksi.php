<?php
$host = "localhost";
$username = "root";
$password = "";
$db = "akademik";

$conn = @mysqli_connect($host, $username, $password, $db);

if (!$conn) {
    echo "Error : " . mysqli_connect_error();
    exit();
}
