<?php

$_Email    = $_POST['email'];
$_User_Name=$_POST['name'];
$_Pass=$_POST['password'];
$errors = array(); 


// connect to the database
include ('connect.php');
// REGISTER USER
if (isset($_POST['_Submit'])) 
  {
  // receive all input values from the form
  //function mysqli_real_escape_string delete special character in string
    $_User_Name = mysqli_real_escape_string($db, $_POST['name']);
    $_Pass = mysqli_real_escape_string($db, $_POST['password']);
   	$_Pass2 = mysqli_real_escape_string($db, $_POST['pass']);
    // form validation: ensure that the form is correctly filled
    // by adding (array_push()) corresponding error unto $errors array
    if (empty($_User_Name)) { array_push($errors, "Username is required"); }
   	if (empty($_Email)) { array_push($errors, "Email is required"); }
    if (empty($_Pass)) { array_push($errors, "Password is required"); }
    if (empty($_Pass2)) { array_push($errors, "Password is required"); }
    if($_Pass != $_Pass2) { array_push($errors, "Passwords don't match"); }

  }

  // first check the database to make sure 
  // a user does not already exist with the same username 
  $user_check_query = "SELECT * FROM user_pass WHERE username='$_User_Name' LIMIT 1";
  $result = mysqli_query($db, $user_check_query);

  //Hàm mysqli_fetch_assoc () tìm nạp một hàng kết quả dưới dạng một mảng kết hợp.
  //Hàm mysqli_fetch_array () tìm nạp một hàng kết quả dưới dạng một mảng kết hợp, mảng số or cả hai.

  //Note: Các tên trường được trả về từ hàm này phân biệt chữ hoa chữ thường.
  $user = mysqli_fetch_assoc($result);
  if ($user) // if user exists
    if ($user['username'] === $_User_Name)
      array_push($errors, "Username already exists");


  // Finally, register user if there are no errors in the form
  if (count($errors) == 0) 
  {
  	$password = md5($_Pass);//encrypt the password before saving in the database


    $query = "INSERT INTO user_infor (ID, email, name) 
          VALUES('', '$_Email', '$_User_Name')";

    //echo mysqli_insert_id($db); // in ra id được insert vào

    mysqli_query($db, $query);

    $query1 = "INSERT INTO user_pass (UserID, username, password)
                VALUES ('', '$_User_Name', '$password')";

    mysqli_query($db, $query1);
  	header('location:login.html');
  }
  else
  {
    echo "Errors: ";
    print_r($errors);
  } 

?>