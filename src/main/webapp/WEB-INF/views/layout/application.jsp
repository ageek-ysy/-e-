<%@page pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <base href="${applicationScope.basePath}">

    <title><sitemesh:write property="title" /></title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="keywords" content="通州酒水,通州生鲜,通州水果,通州蔬菜,通州肉,通州蛋,通州促销活动,通州促销产品,北京通糖烟酒糖业有限公司,北京通州区超市"/>
    <meta http-equiv="description" content="北京通州酒水,北京通州生鲜,北京通州促销产品等,北京通州区超市连锁,北京通州区免费送货,北京通州区正品低价、品质保障、配送及时、轻松购物,北京通州新鲜e客,北京通州品质"/>

    <link rel="stylesheet" href="assets/lib/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="assets/lib/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="assets/lib/css/animate.css"/>
    <link rel="stylesheet" href="assets/lib/css/style.css"/>
    <sitemesh:write property="css"  />
    <link rel="stylesheet" type="text/css" href="assets/css/pc/common.css"/>

    <script type="text/javascript" src="assets/lib/js/jquery-1.12.3.min.js"></script>
    <script type="text/javascript" src="assets/lib/js/bootstrap.min.js"></script>
    <sitemesh:write property="js"  />
</head>
<body>



<link href="favicon.ico" rel="shortcut icon" type="image/x-icon"/>

<link rel="stylesheet" type="text/css" href="assets/css/pc/common.css"/>
<script type="text/javascript" src="assets/lib/js/jquery.hoverIntent.js"></script>
<script type="text/javascript" src="assets/js/pc/menu.js"></script>
<style type="text/css">
    /*AJAX查看购物车*/
    .my_shop_see{width:500px; height:280px; overflow-y: auto; position: absolute; z-index: 100; border:1px solid #FDAB15; background-color: #fff; display: none; }
    .my_shop_see .toMyShopCar{height:40px; line-height: 40px; text-align: center;}
    .my_shop_see .goods{height:80px; overflow: hidden; padding-bottom: 10px; margin-top:10px; border-bottom: 1px dashed #DCDCDC;}
    .my_shop_see .goods .goImg{float:left; width: 80px; height:80px; padding-left:15px;}
    .my_shop_see .goods .goImg img{width: 60px; height:60px; padding:1px; border:1px solid #DCDCDC;}
    .my_shop_see .goods .goName{width: 300px; font-size:14px; float:left; height:25px; line-height: 25px; overflow: hidden;}
    .my_shop_see .goods .goPrice{float:right; text-align: right; padding-right:15px; color:#FDAB15; font-weight: bold;}
</style>


<!-- 顶部 S -->
<div class="top">
    <div class="my_shop_see" data-isshow="0">
        <input type="hidden" class="isLogin" value="0"/>

        <div class="hide tempCon goods">
            <div class="goImg">
                <img src="assets/img/no_img.png"/>
            </div>
            <div class="goName">
                燕京啤酒5提20包装
            </div>
            <div class="goPrice">
                ￥98.00X2
            </div>
        </div>
        <div class="toMyShopCar">
            请<a href="/members/login" style="color:#FDAB15; padding:0 3px;">登录</a>后查看您的购物车
        </div>
    </div>


    <div class="container">
        <div class="lc">
        </div>

        <div class="rc">

            您好，请<a href="members/login.html" style="margin:0;">登录</a>&nbsp;
            <a href="members/register.html">免费注册</a>&nbsp;|
            <a href="members/info.html">会员中心</a>&nbsp;|
            <a href="http://www.ttlsgs.com/downloads/down">APP下载</a>
        </div>
    </div>
</div>
<!-- 顶部 E -->




<script type="text/javascript">
    $(function(){
        //商品检索
        $(".searchBtn").click(function(){
            var keyword = $("#keyword");
            var kv = $.trim(keyword.val());
            if(kv==""){
                alert("请输入商品名称关键字");
                return false;
            }
            $("#searchForm").submit();
        });

    });

</script>

<div class="main">
    <sitemesh:write property="body" />
</div>



<!-- 底部 S -->
<div class="footer">
    <div class="con1">
        <ul>
            <li><i class="fa fa-ils"></i>&nbsp;<a href="javascript:void(0);">正品原汁原味</a></li>
            <li><a href="javascript:void(0);"><i class="fa fa-stack-exchange"></i>&nbsp;快速订单确认</a></li>
            <li><a href="javascript:void(0);"><i class="fa fa-send"></i>&nbsp;通州区物流配送</a></li>
            <li><a href="javascript:void(0);"><i class="fa fa-xing"></i>&nbsp;用户收货确认</a></li>
            <li class="last"><a href="javascript:void(0);"><i class="fa fa-thumbs-o-up"></i>&nbsp;百万用户口碑</a></li>
        </ul>
    </div>

    <div class="container">
        <ul class="linkUl">
            <li><b>品农商城</b></li>
            <li><a href="#">关于我们</a></li>
            <li><a href="#">法律政策</a></li>
            <li><a href="#">联系我们</a></li>
        </ul>
        <ul class="linkUl">
            <li><b>新手指南</b></li>
            <li><a href="#">正品保证</a></li>
            <li><a href="#">购物指南</a></li>
            <li><a href="#">费用说明</a></li>
        </ul>
        <ul class="linkUl">
            <li><b>帮助中心</b></li>
            <li><a href="#">实名认证</a></li>
            <li><a href="#">签收说明</a></li>
            <li><a href="#">运输时效</a></li>
        </ul>
        <ul class="linkUl" style="width:250px;">
            <li><b>联系我们</b></li>
            <li><a href="javascript:void(0);">周一至周日8:00-20:00(节假日除外)</a></li>
            <li><a href="javascript:void(0);">联系客服</a></li>
            <li><a href="javascript:void(0);">400-6286-510</a></li>
            <li><a href="#" target="_blank">备案号：京ICP备16048908号</a></li>
        </ul>
        <div style="float:right; width:250px; text-align: right;">
            <a href="javascript:void(0);"><img src="assets/img/pc/code_app_android.png" width="100px" border="0"/></a>&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="javascript:void(0);"><img src="assets/img/pc/code_wx_tong_tang.png" width="100px" border="0"/></a>
        </div>
    </div>
</div>
<!-- 底部 E -->
</body>
</html>