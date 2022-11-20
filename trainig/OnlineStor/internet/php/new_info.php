<?php
require_once "connect.php";
session_start();
$user=$_SESSION['user'];
$user_name=$_POST['user_name'];
$user_login=$_POST['user_login'];
$user_pass=$_POST['user_pass'];
$user_mail=$_POST['user_mail'];
$sql="UPDATE `users` SET `name` = '$user_name', `login` = '$user_login', `pass` = '$user_pass', `mail` = '$user_mail' WHERE `id` ='$user[id]'";
$mysql->query($sql);
$sql="SELECT * FROM `users` WHERE `id`='$user[id]'";
$user=$mysql->query($sql);
$_SESSION['user']=$user->fetch_assoc();