<?php 
require_once "php/connect.php";
require_once "blocks/header.php";
$sql="SELECT * FROM `product` WHERE `id_rate`='$_GET[idtar]'";
$tarif=$mysql->query($sql)->fetch_assoc();

?>
<main>
    <div class="container">
      
            <div class="tarif__inner">
                <center><h1>Тариф "<?=$tarif['name']?>"</h1>
                <br>
                <br>
                <br>
                <h1>О тарифе</h1>
                <p><?=$tarif['about']?></p>
                </center>
            </div>
       
       
    </div>
</main>
<?php require_once "blocks/footer.php";?>
