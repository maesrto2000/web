<?php 
require_once "php/connect.php";
session_start();
$user=$_SESSION['user'];
$sql="SELECT * FROM `orders` WHERE `id_client`='$user[id]'";
$orders=$mysql->query($sql);

$sql="SELECT * FROM `visit` WHERE `id`=1";
$visit=$mysql->query($sql)->fetch_assoc();
$visit=$visit['count'];


require_once "blocks/header.php";


?>
<main>
    <div class="container">
        <div class="cabinet">
        <h1>Личный кабинет</h1>
            

           <div class="tabs">
                <div class="tabs_header">
                    <ul>
                        <li class="active">Изменить профиля</li>
                        <li>Просмотреть свои заказы</li>
                        <li>Количество посещений</li>
                        
                    </ul>
                </div>
                <div class="tabs_content">
                    <ul>
                        <li class="active">
                        <div class="user__info">
                            <form action="php/new_info.php" method="post" id="info_user">
                                <div class="col">
                                    <p>
                                        <label for="">Имя:</label> <input type="text" id="user_name" value="<?= $user['name']?>">
                                    </p>
                                    <p>
                                        <label for="">Логин:</label> <input type="text" id="user_login" value="<?= $user['login']?>">
                                    </p>
                                    <p>
                                        <label for="">Пароль:</label> <input type="text" id="user_pass" value="<?= $user['pass']?>">
                                    </p>
                                    <p>
                                    <label for="">Почта: </label>  <input type="text" id="user_mail" value="<?= $user['mail']?>">
                                    </p>
                                </div>
                                <input type="submit" value="Изменить" class="subbtn">
                            </form>
                        </div>
                        </li>
                        <li>
                        <div class="order__user">
                            <div class="tar">
                                <h1>Ваши заказы </h1>
                                <a href="php/deletehistory.php">Очистить историю</a>
                            </div>
                        
                            <br>
                            
                            <?php
                            while($order=$orders->fetch_assoc()){
   
                                $sql="SELECT * FROM `order_item` JOIN product ON order_item.id_product=product.id_rate WHERE `id_order`='$order[id_orders]'";
                                $order_items=$mysql->query($sql);
                                
                                
                            ?>
                                <div class="order">
                                    <h1>Номер заказа:#<?= $order['id_orders']?></h1>
                                    <h2>Дата заказа:<?=$order['date_order']?></h2>
                                    
                                </div>
                                <div class="order_items">
                                    <?php 
                                    while($item=$order_items->fetch_assoc()){
                                        
                                    ?>
                                        <div class="order_item">
                                            <h3><?=$item['name']."x".$item['count']?></h3>
                                            <br>

                                        </div>
                                    <?php
                                    }
                                    ?>
                                    <h2>Сумма:<?= $order['sum_order']?></h2>
                                </div>
                            
                            <?php

                            }
                            ?>
                        </div>
                        </li>
                        <li><h1>Количество посещений:<?=$visit?></h1></li>
                    </ul>
                </div>
           </div>

           
        </div>
    </div>
</main>
<?php require_once "blocks/footer.php";?>
