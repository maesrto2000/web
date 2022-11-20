<?php
session_start();
$id_item=$_POST['iditem'];
$temp=$_SESSION['cart'];
unset($temp[$id_item]);
$_SESSION['cart']=$temp;