$(function() {
    // 1. 购物车商品全选
    // 当任意一个全选多选框状态改变时，另一个全选框和三个商品全选框状态与之改变
    $('.checkall').change(function() {
        $(".checkall, .j-checkbox").prop('checked', $(this).prop('checked'))
        getSum()
    })

    // 当商品复选框每次改变时，判断被选中的复选框总个数 (.length) 所有全选框中，否则取消全选
    $('.j-checkbox').change(function() {
        if ($('.j-checkbox:checked').length === $('.j-checkbox').length) {
            $('.checkall').prop('checked', true)
        } else {
            $('.checkall').prop('checked', false)
        }
        getSum()
    })


    // 2. 实现所选商品的小计
    $('.increment').click(function() {
        // 点击+ 文本框值加1
        let n = $(this).siblings('.itxt').val()  // 获取带文本框里原有的商品数量
        n++
        $(this).siblings('.itxt').val(n)   // 商品数量值加1后再赋值给文本框的value
        // 点击+ 实现商品项目的小计
        let p = $(this).parents('.p-num').siblings('.p-price').text()
        p = p.substr(1)
        let price = "¥" + (p * n).toFixed(2)   // 隐式转换
        $(this).parents('.p-num').siblings('.p-sum').text(price)
        getSum()
    })
    
    $('.decrement').click(function() {
        // 点击- 文本框值减1
        let n = $(this).siblings('.itxt').val()
        if (n == 1) {   // 判断 如果n值为1 则不减
            return false
        }
        n--
        $(this).siblings('.itxt').val(n)  // 商品数量值加减1后再赋值给文本框的value
        // 点击- 实现商品项目的小计
        let p = $(this).parents('.p-num').siblings('.p-price').text()
        p = p.substr(1)
        let price = "¥" + (p * n).toFixed(2)   // 隐式转换
        $(this).parents('.p-num').siblings('.p-sum').text(price)
        getSum()
    })

    // 3. 当文本框里的值手动改变时 实现商品价格小计
    $('.itxt').change(function() {
        let n = $(this).val()
        let p = $(this).parents('.p-num').siblings('.p-price').text()
        p = p.substr(1)
        let price = "¥" + (p * n).toFixed(2)   // 隐式转换
        $(this).parents('.p-num').siblings('.p-sum').text(price)
        getSum()
    })


    // 4. 计算购物车商品总件数和总额
    function getSum() {
        let count = 0   // 计算总件数
        let money = 0   // 计算总价格
        // 实现所选商品总数量累计
        let itxt = $('.j-checkbox:checked').parents('.cart-item').find('.itxt')
        itxt.each(function(i, ele) {
            count += parseInt($(ele).val()) 
        })
        $(".amount-sum em").text(count)

        // 实现所选商品价格的累计
        let psum = $('.j-checkbox:checked').parents('.cart-item').find('.p-sum')
        psum.each(function(i, ele) {
            money += parseFloat($(ele).text().substr(1))
        })
        $('.price-sum em').text('¥' + money.toFixed(2))
    }


    // 5. 在购物车中删除商品
    // 点击商品项右侧的 “删除” 删除改条目
    $('.p-action a').click(function() {
        $(this).parents('.cart-item').remove()
        getSum()
    })

    // 删除选中的商品
    $('.remove-batch').click(function() {
        $('.j-checkbox:checked').parents('.cart-item').remove()
        getSum()
    })

    // 清理购物车
    $('.clear-all').click(function() {
        $('.cart-item').remove()
        getSum()
    })


    // 6. 在购物车中选中的商品添加背景色
    // 当全选状态改变时 所有商品项目背景色随之改变 当选中是 添加橙色背景的类样式 否则去除该样式
    $('.checkall').change(function() {
        if ($(this).prop('checked')) {
            $('.cart-item').addClass('check-cart-item')   // 此处类名前不需要加.
        } else {
            $(".cart-item").removeClass('check-cart-item')
        }
    })

    // 当复选状态改变时 所有商品项目背景色随之改变 当选中是 添加橙色背景的类样式 否则去除该样式
    $('.j-checkbox').change(function() {
        if ($(this).prop('checked')) {
            $(this).parents('.cart-item').addClass('check-cart-item');
        } else {
            $(this).parents('.cart-item').removeClass('check-cart-item');
        }
    })
})