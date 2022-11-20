$(document).ready(function(){
    updatecart();
    $('#open_sign').click(function(){
        $('.popup').addClass('activeform');
        $('.error_sign').html('')
    })
    $('.popup__close').click(function(){
        $('.popup').removeClass('activeform');
    })
    $('.onlyinp').on('input',function(){
        $(this).val(this.value.replace(/[^0-9]/g, ''));
        this.value = this.value.substr(0, 16);   
    })
    //Вход 
    $('#check__user').submit(function(e){
        e.preventDefault();
        var login=$('#login').val();
        var pass=$('#pass').val();
        if(login=="" || pass==""){
            $('.error_sign').addClass('active');
            $('.error_sign').html('Заполните все поля');
            return;
        }
        $.ajax({
            type: $(this).attr('method'),
            url:  $(this).attr('action'),
            data: {
                login:login,
                pass:pass
            }
        }).done(function(res){
            if(res=='404'){
                $('#login').val('');
                $('#pass').val('');
                $('.error_sign').addClass('active');
                $('.error_sign').html('Пользователь не найден');
            }
            else{
                location.reload();
            }
            
        })
    })
    // Регистрация
    $('#newuser').submit(function(e){
        e.preventDefault();
        let login=$('#reglogin').val();
        let name=$('#regname').val();
        let mail=$('#regmail').val();
        let pass=$('#regpass').val();

        $.ajax({
            type: $(this).attr('method'),
            url:$(this).attr('action'),
            data: {
                login:login,
                pass:pass,
                name:name,
                mail:mail
            }
        }).done(function(res){
            if(res=='errorlog'){
                $('.error_sign').addClass('active');
                $('.error_sign').html('Такой логин занят');
                return;
            }
            location.href='cabinet.php';
        });
    })
    // Смена данных
    $('#info_user').submit(function(e){
        e.preventDefault();
        let user_name=$('#user_name').val();
        let user_login=$('#user_login').val();
        let user_pass=$('#user_pass').val();
        let user_mail=$('#user_mail').val();
        $.ajax({
            type: $(this).attr('method'),
            url: $(this).attr('action'),
            data: {
                user_name:user_name,
                user_login:user_login,
                user_pass:user_pass,
                user_mail:user_mail
            }
        }).done(function(res){
            alert("Данные изменены")
        });
    })
    // Добавление в корзину
    $('.addcart').click(function(){
        var id_product= $(this).attr('data-product');
        $.ajax({
            type: "POST",
            url: "php/addcart.php",
            data: {
                iditem:id_product
            }
        }).done(function(res){
            updatecart();
        });
    })
    $(document).on('input','.select_item',function(){
        var allprice=0;
        $(this).parents('.cart').find('.select_item').each(function(){
            if($(this).is(':checked')){
                allprice+=Number($(this).val());
            }
        })
        $('.sumcart').html(`Сумма корзины:${allprice}р`);
    })
    // Создание заказа
    $('#createorder').click(function(){
       
    })
    $('.tabs_header>ul>li').click(function(){
        $('.tabs_content>ul>li').removeClass('active');
        $('.tabs_header>ul>li').removeClass('active');
        $(this).addClass('active')
        $('.tabs_content>ul>li').eq($(this).index()).addClass('active');
    })
})
function updatecart(){
    $.ajax({
        url: "php/uploadcart.php"
    }).done(function(res){
        $('.cart').html('');
        $('.sumcart').html('asd');
        if(res=='null'){
            $('.cart').append('<h1>Корзина пуста</h1>')
        }else{

            var info=JSON.parse(res);
            $('.item').remove();
            var sum=0;
            $('.cart').append('<h1>Корзина </h1>')
                Object.keys(info).forEach(function(k){
                sum+=info[k].count*info[k].price;
                $('.cart').append(`
                <div class="item">
                    <div class="infoproduct" style="display:flex;justify-content: space-between;">
                        <div class="content">
                            <h3>Название:${info[k].name}</h3>
                            <h3 class="count">Количество:${info[k].count}</h3>
                            <h2 class="total_price">Итог:${info[k].count*info[k].price}</h2>
                            <p onclick="delitem(${info[k].id_rate})" class="deleteitem" data-iditem=${info[k].id_rate}>Удалить</p>
                            <br>
                            <br>
                        </div>
                        <input type="checkbox" name="" class="select_item" value="${info[k].count*info[k].price}">
                    </div>

                </div>
                
            </div>`)
            });
            if(Object.keys(info).length!=0){
                $('.cart').append('<h1 class=sumcart></h1>');
                $('.cart').append('<button class="subbtn" id="createorder">Оформить заказ</button>');
                $('#createorder').on('click',function(event){
                    var price=$('.sumcart').text();
                    
                    if(price=='' || price==0 ){
                        alert('Выберите товар');
                        return;
                    }
                    price=parseInt(price.match(/\d+/))
                    $.ajax({
                        type:"POST",
                        url: "php/createorder.php",
                        data:{
                            sum_order:price
                        }
                    }).done(function(res){
                        if(res=='notuser'){
                            alert("Войдите чтоб сделать заказ");
                            return;
                        }
                        alert('Спасибо за заказ')
                        console.log(res);
                    });
                });

            }else{
                $('.cart').html('');
                $('.cart').append('<h1>Корзина пуста</h1>')
            }
           
        }
           
    })

}
function delitem(id){
    $.ajax({
        type: "POST",
        url: "php/deleteitem.php",
        data: {
            iditem:id
        }
     }).done(function(){ 
        updatecart();          
    });  
}
    
