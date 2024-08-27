$(function() {
    // alert(111);   //测试js文件引入正确与否
    //1.购物车商品全选   
    //当任一个全选框状态改变，剩下的全选框和所有商品的复选框状态与之匹配  
    $('.checkall').change(function() {
            $('.checkall,.j-checkbox').prop('checked', $(this).prop('checked'));
            getSum();
        })
        //当商品的复选框状态改变时 判断所选商品复选框的数量是否等于所有商品复选框的数量 是则全选选中 否则全选取消选择
    $('.j-checkbox').change(function() {
        if ($('.j-checkbox:checked').length === $('.j-checkbox').length) {
            $('.checkall').prop('checked', true)
        } else {
            $('.checkall').prop('checked', false)
        }
        getSum();
    })


    //2.在购物车中增减商品数量

    //每次点击加号 文本框数量增加1
    $('.increment').click(function() {
        var n = $(this).siblings('.itxt').val();
        n++;
        $(this).siblings('.itxt').val(n);
        //3.实现购物车商品小计
        var p = $(this).parents('.p-num').siblings('.p-price').text();
        // console.log(p);   //￥12.60
        p = p.substr(1);
        // console.log(p);
        var price = '￥' + (p * n).toFixed(2); //隐式转换
        // console.log(price);
        $(this).parents('.p-num').siblings('.p-sum').text(price);
        getSum();
    })

    //每次点击减号 文本框数量减1  直到值为1
    $('.decrement').click(function() {
        var n = $(this).siblings('.itxt').val();
        if (n == 1) { //判断如果值为1   则不再减
            return false;
        }
        n--;
        $(this).siblings('.itxt').val(n);

        //3.实现购物车商品小计
        var p = $(this).parents('.p-num').siblings('.p-price').text(); //从“+”去获取到当前对应的商品的单价
        // console.log(p);   //￥12.60
        p = p.substr(1);
        // console.log(p);
        var price = '￥' + (p * n).toFixed(2); //隐式转换
        // console.log(price);
        $(this).parents('.p-num').siblings('.p-sum').text(price);
        getSum();
    })

    //3.实现购物车商品小计
    //当文本框数量手动改变时 实现商品小计
    $('.itxt').change(function() {
        var n = $(this).val();
        var p = $(this).parents('.p-num').siblings('.p-price').text();
        // console.log(p);   //￥12.60
        p = p.substr(1);
        // console.log(p);
        var price = '￥' + (p * n).toFixed(2); //隐式转换
        // console.log(price);
        $(this).parents('.p-num').siblings('.p-sum').text(price);
        getSum();
    })




    //4.计算购物车商品总件数和总额  
    function getSum() {

        //计算所选商品件数
        var count = 0;

        $('.j-checkbox:checked').parents('.cart-item').find('.itxt').each(function(i, ele) {
            count += parseInt($(ele).val());


        })
        $('.amount-sum em').text(count);


        var money = 0; //计算所选商品总额
        $('.j-checkbox:checked').parents('.cart-item').find('.p-sum').each(function(i, ele) {
                money += parseFloat($(ele).text().substr(1));


            })
            // console.log('￥' + money.toFixed(2));
        $('.price-sum em').text('￥' + money.toFixed(2));


    }

    //5.在购物车中删除商品
    //点击商品项右侧的“删除” 删除该条目
    $('.p-action a').click(function() {
            $(this).parents('.cart-item').remove();
            getSum();
        })
        //实现“删除选中的商品”
    $('.remove-batch').click(function() {
        $('.j-checkbox:checked').parents('.cart-item').remove();
        getSum();
    })

    //实现“清理购物车”
    $('.clear-all').click(function() {
        $('.cart-item ').remove();
        getSum();

    })


    //6.在购物车中为选中的商品添加背景色
    //当全选状态改变时 所有商品项目背景色随之改变 当选中时 添加橙色背景的类样式 否则去除该样式
    $('.checkall').change(function() {
            if ($(this).prop('checked')) {
                $('.cart-item').addClass('check-cart-item') //此处类名前不需要加.

            } else {
                $('.cart-item').removeClass('check-cart-item');
            }
        })
        //当商品复选框状态改变时 商品项目背景色随之改变 当选中时 添加橙色背景的类样式 否则去除该样式

    $('.j-checkbox').change(function() {

        if ($(this).prop('checked')) {
            $(this).parents('.cart-item').addClass('check-cart-item') //此处类名前不需要加.

        } else {
            $(this).parents('.cart-item').removeClass('check-cart-item');
        }
    })


})