<?php session_start();
//connect.php
$user = 'root';
$pass= '';
$db = 'forum';

$con = new mysqli('localhost',$user, $pass, $db) or die ("Unable to connect");

?>