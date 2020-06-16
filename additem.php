<?php
	
	session_start();
	include ('connect.php');

	//tạo mảng thông tin về giỏ hàng nếu cần
	if(empty($_SESSION['cart'])) 
		$_SESSION['cart'] = array( );

	if(!isset($_SESSION['ID']) && !isset($_COOKIE['ID']))
		header('location: notsuccesscart.php');
		
	else if(isset($_POST['submit']))
		{
			$_SESSION['cart'][]=$_POST['name-flw'];
			header('location: successcart.php');
		}


	
		
?>