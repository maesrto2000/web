<?php
session_start();
if($_POST['iditem']==null){}
else{
    $id_item=$_POST['iditem'];
    $sql="SELECT `id_rate`,`name`,`price` FROM `product` WHERE `id_rate`='$id_item'";
    require_once "connect.php";
    if(!isset($_SESSION['cart'])){
        $temp[$id_item]=$mysql->query($sql)->fetch_assoc();
        $temp[$id_item]=$mysql->query($sql)->fetch_assoc();
        $temp[$id_item]['count']=1;
    }else{
        $temp=$_SESSION['cart'];
        if(!array_key_exists($id_item,$temp)){
            $temp[$id_item]=$mysql->query($sql)->fetch_assoc();
            $temp[$id_item]['count']=1;
        }else{


            $temp[$id_item]['count']++;
        }
    }
    $_SESSION['cart']=$temp;
}