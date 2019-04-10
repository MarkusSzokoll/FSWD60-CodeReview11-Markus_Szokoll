<?php 

	$mysqli = @mysqli_connect('localhost','root','', 'cr11_markus-szokoll_travelmatic');
	if (!$mysqli) {
	   die("Connection failed: " . mysqli_connect_error());
	}
?>
