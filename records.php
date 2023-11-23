<?php

include('connection.php');

//form fields
$firstname=$_POST['firstname'];
$lastname=$_POST['lastname'];
$surname=$_POST['surname'];
$phone_number=$_POST['phone_number'];
$email=$_POST['email'];
$radbtn=$_POST['radbtn'];
$region=$_POST['region'];
$textarea=$_POST['textarea'];

//adding records into the database
$sql="Insert into enquiry values('$firstname','$lastname','$surname','$phone_number','$email','$radbtn','$region','$textarea')";

if($connection->query($sql)){
  echo"<script>window.alert('record added succesfully')</script>";
  //echo "records added successfully";
}
else{
  echo "Error:" .$sql." " .$connection->error;
}
  mysqli_close($connection);

?>

<?php



