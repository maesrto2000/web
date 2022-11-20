<?php
session_start();
require_once "connect.php";


$id_user=$_SESSION['user']['id'];
$sql="SELECT id_orders FROM `orders` WHERE orders.id_client='$id_user'";
$id_orders=$mysql->query($sql);
while($id_order=$id_orders->fetch_assoc()){
   
    $sql="SELECT id_item FROM `order_item` WHERE `id_order`='$id_order[id_orders]'";
    $id_item=$mysql->query($sql);

    while($item=$id_item->fetch_assoc()){
        $sql="DELETE FROM `order_item` WHERE `id_item`='$item[id_item]'";
        $mysql->query($sql);
    }
    $sql="DELETE FROM `orders` WHERE `id_orders`='$id_order[id_orders]'";
    $mysql->query($sql);
}
header("Location: ../cabinet.php");