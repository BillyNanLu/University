$(function() {
    // 1. 购物车商品全选
    // 任意一个多选框的状态改变时，另外一个多选框和商品的复选框的状态也随之改变
    $('.checkall').change(function() {
        $('.checkall, .j-checkbox').prop('checked', $(this).prop('checked'))
        getSum()
    })

    // 当商品的复选框状态改变时 判断改变的数量 与商品数量相等全选 不等则取消全选
    $('.j-checkbox').change(function() {
        if ($('.j-checkbox:checked').length === $('.j-checkbox').length) {
            $('.checkall').prop('checked', true)
        } else {
            $('.checkall').prop('checked', false)
        }
        getSum()
    })


    // 实现所选商品的小计
    $('.increment').click(function() {
        // 点击+ 实现商品数量的小计
        let n = $(this).siblings('.itxt').val()
        n++
        $(this).siblings('.itxt').val(n)
        // 点击+ 实现商品价格的小计
        let p = $(this).parents('.p-num').siblings('.p-price').text()
        p = p.substr(1)
        let price = "¥" + (n*p).toFixed(2)
        $(this).parents('.p-num').siblings('.p-sum').text(price)
        getSum()
    })

    $('.decrement').click(function() {
        // 点击— 实现商品数量的小计
        let n = $(this).siblings('.itxt').val()
        if (n == 1) {
            return false
        }
        n--
        $(this).siblings('.itxt').val(n)
        // 点击- 实现商品价格的小计
        let p = $(this).parents('.p-num').siblings('.p-price').text()
        p = p.substr(1)
        let price = "¥" + (n*p).toFixed(2)
        $(this).parents('.p-num').siblings('.p-sum').text(price)
        getSum()
    })

    // 手动改变文本框值时 实现商品小计
    $('.itxt').change(function() {
        let n = $(this).val()
        let p = $(this).parents('.p-num').siblings('.p-price').text()
        p = p.substr(1)
        let price = "¥" + (n*p).toFixed(2)
        $(this).parents('.p-num').siblings('.p-sum').text(price)
        getSum()
    })


    // 4. 实现购物车商品总数量和总额小计
    function getSum() {
        let count = 0
        let money = 0
        // 实现所选商品数量小计
        let itxt = $('.j-checkbox:checked').parents('.cart-item').find('.itxt')
        itxt.each(function(i, ele) {
            count += parseInt($(ele).val())
        })
        $('.amount-sum em').text(count)

        // 实现所选商品价格小计
        let psum = $('.j-checkbox:checked').parents('.cart-item').find('.p-sum')
        psum.each(function(i, ele) {
            money += parseFloat($(ele).text().substr(1))
        })
        $('.price-sum em').text('¥' + money.toFixed(2))
    }


    // 5. 删除商品
    // 点击商品右侧 "删除" 删除该商品
    $('.p-action a').click(function() {
        $(this).parents('.cart-item').remove()
        getSum()
    })

    // 删除所选商品
    $('.remove-batch').click(function() {
        $('.j-checkbox:checked').parents('.cart-item').remove()
        $('checkall').prop('checked', false)
        getSum()
    })

    // 清除购物车
    $('.clear-all').click(function() {
        $('.cart-item').remove()
        $('checkall').prop('checked', false)
        getSum()
    })


    // 6. 商品背景添加背景色
    // 全选框状态改变时 所有商品项目背景随之改变 选中的商品添加背景色 不选中不添加
    $('.checkall').change(function() {
        if ($(this).prop('checked')) {
            $('.cart-item').addClass('check-cart-item')
        } else {
            $('.cart-item').removeClass('check-cart-item')
        }
    })

    // 多选框状态改变时 商品项目背景色随之改变 选中添加背景色 不选中去除背景色
    $('.j-checkbox').change(function() {
        if ($(this).prop('checked')) {
            $(this).parents('.cart-item').addClass('check-cart-item')
        } else {
            $(this).parents('.cart-item').removeClass('check-cart-item')
        }
    })
})