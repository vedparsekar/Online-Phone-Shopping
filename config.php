<?php
   $dbhost = 'localhost';
   $dbuser = 'root';
   $password = '';
   $dbname = 'onlinephone';
   $conn = mysqli_connect($dbhost, $dbuser,$password,$dbname);
   
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
 } 
 ?>