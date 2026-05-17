<?php
$servername = "localhost";
$username = "root";
$password = "";
$db_name= "notes";
$conn = new mysqli($servername, $username, $password, $db_name,3307); 
if(!$conn){
    die ("connection in-completed".mysqli_connect_error());
} 
?>
