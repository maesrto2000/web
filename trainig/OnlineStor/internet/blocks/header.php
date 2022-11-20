<?php
require_once "php/connect.php";
session_start();
$user=$_SESSION['user'];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Интернет провайдер</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="style/style.css">
</head>
<body>
<header>
    <div class="container">
        <div class="header__inner">
            <a href="/"><img src="img/logo.png" alt="" class="logo"></a>
            <?php
                if(isset($user)){
            ?>
            <h2>Добро пожаловать,<?= $user['name']?></h2>
            <?php
                }
            ?>
            <div class="menu">
                <ul>   
                <li><a href="news.php" id="">Новости</a></li>
                <li><a href="cont.php" id="">Контакты</a></li>
                <li><a href="about.php" id="">О нас</a></li>
                    <?php
                    if(isset($user)){
                    ?>
                    <li><a href="cabinet.php" >Личный кабинет</a></li>
                    <li><a href="php/exit.php">Выход</a></li>
                    <?php
                        }else{
                    ?>
                    
                    <li><a href="#" id="open_sign">Войти</a></li>
                    <?php
                        }
                    ?>
                </ul>
            </div>
            
        </div>
    </div>
    <div class="popup" id="sign_popup">
            <div class="popup__container">
                <div class="popup_body">
                    <form action="php/checkuser.php" method="post" id="check__user">
                        <h1>Вход</h1>
                        <input type="text" placeholder="Логин" name="login" id="login" class="popup__input">
                        <input type="password" placeholder="Пароль" name="pass" id="pass" class="popup__input">
                        <br>
                        <input type="submit" value="Войти" class="subbtn" id="">
                        <br>
                        <h4 class="error_sign"></h4>
                        <h3 class="popup__close">&#10006</h3>
                        <h3><a href="register.php">Зарегистрироваться</a></h3>
                    </form>                          
                </div>
            </div>
    </div>
</header>    
