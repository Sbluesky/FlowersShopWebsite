<?php
	include ('connect.php');
	if(isset($_POST['submit']))
	{
		$array=$_POST['deluser'];
		$i=0;
		foreach ($array as $key => $i) 
		{


			$DelID=$array[$key];
			
			$query = "DELETE FROM user_pass WHERE UserID=$DelID ";
			$result = mysqli_query($db, $query);
			$query = "DELETE FROM user_infor WHERE ID=$DelID ";
			$result = mysqli_query($db, $query);

		}
		
		header('location:adminpage.php');
	}

?>