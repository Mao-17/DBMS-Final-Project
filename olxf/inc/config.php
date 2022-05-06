<?php
session_start(); /* Session */
$host="localhost";
$port=3306;
$socket="";
$user="root";
$password="score1000";
$dbname="olx_copyf";
$db=new mysqli($host, $user, $password, $dbname, $port, $socket)
	or die ('Could not connect to the database server' . mysqli_connect_error());
?>