<?php
	session_start();

	if (!isset($_SESSION["email"]) || !isset($_SESSION["loggedIn"])){
			header("Location: login.php");
			exit();
	}
?>      
HOMEPAGE<br>
<a href = "logout.php">Log Out</a>