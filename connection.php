<?php
  $server="localhost";
  $userName="root";
  $password="";
  $dataBaseName="Customer";

  //creating a connection to the database

  $connection=mysqli_connect($server, $userName, $password, $dataBaseName);

  //check if the connection is established

  if($connection){
  //echo "connection is established successfully";
  }
  else{
    echo "connection failed to establish";
  }
//



?>
