<?php
	session_start();
	$i=0;
	$j=0;
	$session=array();
	$post=array();
	$session=$_SESSION['cart'];
	$post=$_POST['choose'];
	
	foreach ($post as $key => $j) 
	{
		foreach ($session as  $value => $i)
		{
			if($post[$key]===$session[$value])
			{
				if(isset($_SESSION['cart'][$value]))
				{	array_splice($_SESSION['cart'], $value, 1);//nếu giá trị session[cart] tại vị trí $value còn tồn tại thì xóa, nếu không thì so sánh tiếp giá trị tiếp theo
					break;
				}
			}
			

		}
	}
	
	header('location:cart.php');
?>