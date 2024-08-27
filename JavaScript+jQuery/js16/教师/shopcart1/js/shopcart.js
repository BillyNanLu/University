$(function() {
    //1.购物车商品全选   
    //当任一个全选多选框状态改变时 ，另一个全选框和三个商品全选框状态与之匹配

    $('.checkall').change(function() {
            $('.checkall, .j-checkbox').prop('checked', $(this).prop('checked'));
            getSum();
        })
        //当商品复选框每次改变时，判断被选中的复选框个数是否等于商品复选框的总个数（.length）如果相等所有全选框选中，否则全选框取消选择
    $('.j-checkbox').change(function() {
        if ($('.j-checkbox:checked').length === $('.j-checkbox').length) {
            $('.checkall').prop('checked', true)
        } else {
            $('.checkall').prop('checked', false)
        }
        getSum();
    })




    // 2. 实现所选商品的小计
    $('.increment').click(function() {
        // 点击加号 文本框值增加1
        var n = $(this).siblings('.itxt').val(); //获取到文本框里原有的商品数量
        n++;
        $(this).siblings('.itxt').val(n); //商品数量值加1后再赋值给文本框的value
        //点击加号 实现商品项价格的小计
        var p = $(this).parents('.p-num').siblings('.p-price').text();

        p = p.substr(1);
        var price = '￥' + (p * n).toFixed(2); //隐式转换
        $(this).parents('.p-num').siblings('.p-sum').text(price)

        getSum();
    })

    $('.decrement').click(function() {
        //点击减号 文本框值减1 但是最小值为1、
        var n = $(this).siblings('.itxt').val(); //获取到文本框里原有的商品数量
        if (n == 1) { //判断 如果n值为1 则不减少
            return false;
        }
        n--;
        $(this).siblings('.itxt').val(n); //商品数量值减1后再赋值给文本框的value
        //点击减号 实现商品项价格的小计
        var p = $(this).parents('.p-num').siblings('.p-price').text();
        p = p.substr(1);
        var price = '￥' + (p * n).toFixed(2); //隐式转换
        $(this).parents('.p-num').siblings('.p-sum').text(price)
        getSum();
    })

    //当文本框里的值手动改变时 实现商品项价格小计
    $('.itxt').change(function() {
        var n = $(this).val();
        var p = $(this).parents('.p-num').siblings('.p-price').text();
        p = p.substr(1);
        var price = '￥' + (p * n).toFixed(2); //隐式转换
        $(this).parents('.p-num').siblings('.p-sum').text(price);
        getSum();
    })



    //3.计算购物车商品总件数和总额  
    function getSum() {
        var count = 0; //计算总件数
        var money = 0; //计算总价格
        //实现所选商品总数量累计
        var itxt = $('.j-checkbox:checked').parents('.cart-item').find('.itxt');
        itxt.each(function(i, ele) {
            count += parseInt($(ele).val());
            // console.log(count);

        })
        $('.amount-sum em').text(count);

        ////实现所选商品总价格累计
        var psum = $('.j-checkbox:checked').parents('.cart-item').find('.p-sum');
        psum.each(function(i, ele) {
                money += parseFloat($(ele).text().substr(1));

            })
            // console.log('￥' + money.toFixed(2));
        $('.price-sum em').text('￥' + money.toFixed(2));

    }

})