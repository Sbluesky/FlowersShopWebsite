<?php
	session_start();
	setcookie("ID","",time()-3600);
	$_SESSION['ID'] = '';
	$_SESSION['cart'] = '';
	session_destroy();
	header('location: index.php');
?>