<?php 
	$host	= "localhost";
	$user	= "root";
	$pass	= "";
	$db_name= "db_uas";

	$koneksi = mysqli_connect($host,$user,$pass,$db_name)or die (mysqli_connect_error());
?>