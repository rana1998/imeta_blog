<?php


// $servername = "localhost";
// $username = "eightyfive_blog";
// $password = "gtron@12g";

$servername = "localhost";
$username = "root";
$password = "";
 


try {

	$conn = new PDO("mysql:host=$servername;dbname=eightyfive_blog", $username, $password);

    // set the PDO error mode to exception

	$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

}

catch(PDOException $e)

{

	echo "Connection failed: " . $e->getMessage();

}

?>