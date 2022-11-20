<?php
session_start();
require_once "connect.php";
$name=$_POST['name'];
$login=$_POST['login'];
$pass=$_POST['pass'];
$mail=$_POST['mail'];
$sql="SELECT * FROM `users` WHERE `login`='$login'";
$checklogin=$mysql->query($sql);
$count=$checklogin->num_rows;
if($count>=1){
    echo("errorlog");
    exit();
}
$sql="INSERT INTO `users` (`login`, `pass`, `name`,`mail`, `role`) VALUES ('$login', '$pass', '$name', '$mail', 'user');";
$mysql->query($sql);
$sql="SELECT * FROM `users` WHERE `login`='$login'";
$user=$mysql->query($sql)->fetch_assoc();
$_SESSION['user']=$user;
header('Location: ../index.php');