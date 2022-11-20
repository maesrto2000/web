<?php
session_start();
include 'connect.php';
$user=$_SESSION['user'];

if($user==''){
    echo "notuser";
    exit;
}

$sum=$_POST['sum_order'];

$sql="INSERT INTO `orders` (`id_client`,`sum_order`) VALUES ('$user[id]', '$sum')";
$mysql->query($sql);

$id_order=$mysql->insert_id;
$cart=$_SESSION['cart'];
// $sum=0;
foreach($cart as $key => $val){
    print_r($val);
    print_r($id_order);
    $sql="INSERT INTO `order_item` (`id_order`, `id_product`, `count`) VALUES ('$id_order', '$val[id_rate]', '$val[count]')";
    $mysql->query($sql);
}
