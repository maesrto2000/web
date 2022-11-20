<?php 
require_once "php/connect.php";
if($_GET['filt']=='DESC'){
    $sql="SELECT * FROM `product` ORDER BY `price` DESC";
}elseif($_GET['filt']=='ASC'){
    $sql="SELECT * FROM `product` ORDER BY `price` ASC";
}else{
    $sql="SELECT * FROM `product`";
}

$allproduct=$mysql->query($sql);
require_once "blocks/header.php";

?>
<main>
    <div class="container">
    <div class="filter">
                <form action="/" method="get">
                    <select name="filt">
                        <option value="ASC">По возрастанию цен</option>
                        <option value="DESC">По убыванию цен</option>
                    </select>
                    <input type="submit" value="Отфильтровать" class="subbtn">
                </form>
                
            </div>
        <div class="shop__inner">

            <div class="products">
                <?php
                while($product = $allproduct->fetch_assoc()){

                ?>
                    <div class="product">
                        <div class="head">
                            <h1><?= $product['name']?></h1>

                            <div class="tar">
                                <h2><?= $product['price']?>р</h2>
                                <h2><?= $product['speed']?>мбит/c</h2>
                            </div>
                        </div>
                        
                        <div class="about">
                            <p><?= $product['about']?></p>
                            <br>

                            <br>
                            <center><a href="tarif.php?idtar=<?=$product['id_rate']?>">Подробнее</a></center>
                            <br>
                            
                            <center><button class="addcart" data-product="<?= $product['id_rate'] ?>">В корзину</button></center>
                        </div>
                    </div>
                <?php
                }
                ?>
            </div>



            <div class="cart">
                <p class="sumcart"></p>

            </div>
        </div>
    </div>
</main>
<?php require_once "blocks/footer.php";?>
