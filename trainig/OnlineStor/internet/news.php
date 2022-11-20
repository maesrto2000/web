<?php 
require_once "php/connect.php";
$sql="SELECT * FROM `news`";
$news=$mysql->query($sql);

require_once "blocks/header.php";
?>
<div class="container">
    <div class="news">
        <?php
        while($new = $news->fetch_assoc()){
            $new['img']=base64_encode($new['img']);
        ?>
        <div class="new">
            <img src="data:image/*;base64,<?= $new['img']?>" alt="">
            <div class="info">
                <h1><?= $new['title']?></h1>
                <h3><?= $new['about']?></h3>
            </div>
            
        </div>
        <?php
            }
        ?>
    </div>
</div>
<?php require_once "blocks/footer.php";?>