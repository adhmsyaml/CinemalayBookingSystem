<?php
/* include db connection file */
include("dbconn.php");

	$movie_id = $_POST["movie_id"];
	$ts_id = $_POST["ts_id"];
	$lastname = mysqli_real_escape_string(S_POST["lastname"]);
	$firstname = mysqli_real_escape_string(S_POST["firstname"]);
	$contact_no = mysqli_real_escape_string(S_POST["contact_no"]);
	$qty = $_POST["qty"];
	$date = $_POST["date"];
	$time = $_POST["time"];
	$receipt = mysqli_real_escape_string["receipt"];
	$theater_id = $_POST["theater_id"];
	
	$sql2 = "INSERT INTO books (movie_id, ts_id, lastname, firstname, contact, qty, date, time, receipt)
	VALUES ("$movie_id", "$ts_id", "$lastname", "$firstname", "$contact", "$qty", "$date", "$time", "$receipt")";
		
	mysqli_query($dbconn, $sql2) or die ("Error: " . mysqli_error($dbconn));
	/* display a message */
	echo $sql2;
	echo "Data has been saved";
?>