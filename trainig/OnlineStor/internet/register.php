<?php require_once "blocks/header.php";?>
<main>
    <div class="container">
        <div class="reg_user">
            <form action="php/reguser.php" method="post" id="newuser">
                <!-- <h1>Регистрация</h1> -->
                
                <h5 class="sub__title">Регистрация</h5>
                <div class="cols">
                    <p>
                        <label for="">Имя</label>
                        <input type="text" placeholder="" name="regname" id="regname" required>
                    </p>
                    <p>
                        <label for="">Почта</label>
                        <input type="email" placeholder="" name="regmail" id="regmail" required>
                    </p>
               
                    <p>
                        <label for="">Логин</label>
                        <input type="text" placeholder="" name="login" id="reglogin" required>
                    </p>
                    <p>
                        <label for="">Пароль</label>
                        <input type="password" placeholder="" name="regpass" id="regpass" required>
                    </p>
                    <p>
                        <input type="checkbox" id="robot" required>   Я не робот
                    </p>

                </div>
                <input type="submit" value="Зарегистрироваться" class="subbtn">
            </form>
            <h4 class="error_sign"></h4>
        </div>
    </div>
</main>
<?php require_once "blocks/footer.php";?>