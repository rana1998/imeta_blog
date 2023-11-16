<?php
ob_start();

 
$mysql_host = 'localhost';
$mysql_username = 'root';
$mysql_password = '';
$mysql_database = 'eightyfive_blog';
  
  

$con =$conn= new mysqli($mysql_host, $mysql_username, $mysql_password);
    
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $con->connect_error);
}

$con->select_db($mysql_database) or die( "Unable to select database.");
    
    
?>