<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>

    <title>平谷大桃新鲜e客（pinnong.com）-通州区网购首选-正品低价、品质保障、配送及时、轻松购物</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="keywords" content="通州酒水,通州生鲜,通州水果,通州蔬菜,通州肉,通州蛋,通州促销活动,通州促销产品,北京通糖烟酒糖业有限公司,北京通州区超市"/>
    <meta http-equiv="description" content="北京通州酒水,北京通州生鲜,北京通州促销产品等,北京通州区超市连锁,北京通州区免费送货,北京通州区正品低价、品质保障、配送及时、轻松购物,北京通州新鲜e客,北京通州品质"/>

    <css>
        <link rel="stylesheet" type="text/css" href="assets/css/pc/good_detail.css"/>
        <link rel="stylesheet" type="text/css" href="assets/css/pc/shop_car.css"/>
    </css>

    <js>
        <script type="text/javascript" src="assets/lib/js/jquery.hoverIntent.js"></script>
        <script type="text/javascript" src="assets/js/pc/common.js"></script>
        <script type="text/javascript" src="assets/js/pc/good_detail.js"></script>
    </js>


    </head>
<body>
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

<!-- 导航条 S -->
<div class="header">
    <div class="container2">
        <div class="lc">
            <a href="/"><img src="assets/img/pc/logo.png" width="165px" border="0"/></a>
        </div>
        <div class="rc">
            <form id="searchForm" method="post" action="goods/search.html">
                <input type="text" id="keyword" name="keyword" class="searchInp" maxlength="30" placeholder="商品名称，如：鲜果"/>&nbsp;
                <a href="javascript:void(0);" class="btn-search searchBtn"><i class="fa fa-search"></i>&nbsp;商品搜索</a>&nbsp;


                <a href="shopCars/see.html" class="btn-shop-car"><i class="fa fa-shopping-cart"></i>&nbsp;我的购物车</a>


            </form>
        </div>
    </div>

    <div class="container">
        <div class="lc cate-btn">
            <a id="parentMenu" href="javascript:;" class="menu">
                <i class="fa fa-th-large"></i>&nbsp;&nbsp;
                精选商品分类&nbsp;&nbsp;
                <i class="fa fa-angle-right"></i>
            </a>&nbsp;




            <link rel="stylesheet" type="text/css" href="assets/css/pc/category.css"/>
            <script type="text/javascript" src="assets/js/pc/category.js"></script>


            <div id="menuCategory">

                <div id="mc_Category">
                    <div id="mc_content" style="display: none;">
                        <ul>

                            <li>
                                <a class="lev1" href="javascript:void(0);">水果</a>
                                <span class="lev2">优选水果</span>
                            </li>
                            <li>
                                <a class="lev1" href="javascript:void(0);">蔬菜</a>
                                <span class="lev2">新鲜蔬菜</span>
                            </li>
                            <li>
                                <a class="lev1" href="javascript:void(0);">主食类</a>
                                <span class="lev2">主食类</span>
                            </li>



                            <li>
                                <a class="lev1" href="javascript:void(0);">酒水</a>
                                <span class="lev2">中外名酒</span>
                            </li>
                            <li>
                                <a class="lev1" href="javascript:void(0);">饮品</a>
                                <span class="lev2">时尚饮品</span>
                                <span class="lev2">冲调饮品</span>
                            </li>
                            <li>
                                <a class="lev1" href="javascript:void(0);">家居生活</a>
                                <span class="lev2">个人护理</span>
                                <span class="lev2">家用清洁</span>
                            </li>
                            <li>
                                <a class="lev1" href="javascript:void(0);">休闲食品</a>
                                <span class="lev2">时尚零食</span>
                                <span class="lev2">糖果巧克力</span>
                            </li>
                            <li>
                                <a class="lev1" href="javascript:void(0);">副食</a>
                                <span class="lev2">冷饮冻食</span>
                                <span class="lev2">粮油调味</span>
                            </li>
                        </ul>
                    </div>
                </div>



                <div id="sub_Category">


                    <div class="sub_content">
                        <p class="sub_item_cate">
                            <a class="cate_parent" href="javascript:void(0);">优选水果&nbsp;></a>
                            <a class="cate_child" href="goods/search.html?cid=82">桃</a>|
                            <a class="cate_child" href="goods/search.html?cid=85">梨</a>|
                            <a class="cate_child" href="goods/search.html?cid=81">柑橘</a>|
                            <a class="cate_child" href="goods/search.html?cid=84">苹果</a>|
                            <a class="cate_child" href="goods/search.html?cid=80">瓜果</a>|
                            <a class="cate_child" href="goods/search.html?cid=86">葡萄</a>|
                            <a class="cate_child" href="goods/search.html?cid=83">热带水果</a>
                        </p>
                    </div>


                    <div class="sub_content">
                        <p class="sub_item_cate">
                            <a class="cate_parent" href="javascript:void(0);">新鲜蔬菜&nbsp;></a>
                            <a class="cate_child" href="goods/search.html?cid=89">叶菜类</a>|
                            <a class="cate_child" href="goods/search.html?cid=91">瓜果类</a>|
                            <a class="cate_child" href="goods/search.html?cid=88">根茎类</a>|
                            <a class="cate_child" href="goods/search.html?cid=90">菌类</a>|
                            <a class="cate_child" href="goods/search.html?cid=87">豆类</a>
                        </p>
                    </div>


                    <div class="sub_content">
                        <p class="sub_item_cate">
                            <a class="cate_parent" href="javascript:void(0);">主食类&nbsp;></a>
                            <a class="cate_child" href="goods/search.html?cid=92">主食</a>|
                            <a class="cate_child" href="goods/search.html?cid=93">豆制品</a>
                        </p>
                    </div>




                    <div class="sub_content">
                        <p class="sub_item_cate">
                            <a class="cate_parent" href="javascript:void(0);">中外名酒&nbsp;></a>
                            <a class="cate_child" href="goods/search.html?cid=110">白酒</a>|
                            <a class="cate_child" href="goods/search.html?cid=108">葡萄酒</a>|
                            <a class="cate_child" href="goods/search.html?cid=111">洋酒</a>|
                            <a class="cate_child" href="goods/search.html?cid=109">啤酒</a>|
                            <a class="cate_child" href="goods/search.html?cid=112">黄酒/养生酒</a>
                        </p>
                    </div>


                    <div class="sub_content">
                        <p class="sub_item_cate">
                            <a class="cate_parent" href="javascript:void(0);">时尚饮品&nbsp;></a>
                            <a class="cate_child" href="goods/search.html?cid=117">饮用水</a>|
                            <a class="cate_child" href="goods/search.html?cid=113">茶饮料</a>|
                            <a class="cate_child" href="goods/search.html?cid=118">功能饮料</a>|
                            <a class="cate_child" href="goods/search.html?cid=114">含乳饮料</a>|
                            <a class="cate_child" href="goods/search.html?cid=120">碳酸饮料</a>|
                            <a class="cate_child" href="goods/search.html?cid=116">果味饮料</a>|
                            <a class="cate_child" href="goods/search.html?cid=115">奶制品咖啡</a>|
                            <a class="cate_child" href="goods/search.html?cid=119">养生饮品</a>
                        </p>
                        <p class="sub_item_cate">
                            <a class="cate_parent" href="javascript:void(0);">冲调饮品&nbsp;></a>
                            <a class="cate_child" href="goods/search.html?cid=124">奶粉</a>|
                            <a class="cate_child" href="goods/search.html?cid=121">豆浆/麦片</a>|
                            <a class="cate_child" href="goods/search.html?cid=125">咖啡/奶茶</a>|
                            <a class="cate_child" href="goods/search.html?cid=122">营养品</a>|
                            <a class="cate_child" href="goods/search.html?cid=126">茶</a>|
                            <a class="cate_child" href="goods/search.html?cid=123">蜂蜜/柚子茶</a>
                        </p>
                    </div>


                    <div class="sub_content">
                        <p class="sub_item_cate">
                            <a class="cate_parent" href="javascript:void(0);">个人护理&nbsp;></a>
                            <a class="cate_child" href="goods/search.html?cid=129">面部护肤</a>|
                            <a class="cate_child" href="goods/search.html?cid=127">洗发护发</a>|
                            <a class="cate_child" href="goods/search.html?cid=130">身体护肤</a>|
                            <a class="cate_child" href="goods/search.html?cid=128">口腔护理</a>|
                            <a class="cate_child" href="goods/search.html?cid=131">女性护理</a>
                        </p>
                        <p class="sub_item_cate">
                            <a class="cate_parent" href="javascript:void(0);">家用清洁&nbsp;></a>
                            <a class="cate_child" href="goods/search.html?cid=134">衣物清洁</a>|
                            <a class="cate_child" href="goods/search.html?cid=132">家庭清洁</a>|
                            <a class="cate_child" href="goods/search.html?cid=135">生活用纸</a>|
                            <a class="cate_child" href="goods/search.html?cid=133">除菌消毒</a>|
                            <a class="cate_child" href="goods/search.html?cid=136">厨房用具</a>
                        </p>
                    </div>


                    <div class="sub_content">
                        <p class="sub_item_cate">
                            <a class="cate_parent" href="javascript:void(0);">时尚零食&nbsp;></a>
                            <a class="cate_child" href="goods/search.html?cid=140">膨化</a>|
                            <a class="cate_child" href="goods/search.html?cid=137">坚果炒货</a>|
                            <a class="cate_child" href="goods/search.html?cid=141">蜜饯干果</a>|
                            <a class="cate_child" href="goods/search.html?cid=138">特色零食</a>|
                            <a class="cate_child" href="goods/search.html?cid=142">糕点饼干</a>|
                            <a class="cate_child" href="goods/search.html?cid=139">进口食品</a>
                        </p>
                        <p class="sub_item_cate">
                            <a class="cate_parent" href="javascript:void(0);">糖果巧克力&nbsp;></a>
                            <a class="cate_child" href="goods/search.html?cid=144">糖果</a>|
                            <a class="cate_child" href="goods/search.html?cid=143">巧克力</a>|
                            <a class="cate_child" href="goods/search.html?cid=145">口香糖</a>
                        </p>
                    </div>


                    <div class="sub_content">
                        <p class="sub_item_cate">
                            <a class="cate_parent" href="javascript:void(0);">冷饮冻食&nbsp;></a>
                            <a class="cate_child" href="goods/search.html?cid=150">水饺面点</a>|
                            <a class="cate_child" href="goods/search.html?cid=146">速冻半成品</a>|
                            <a class="cate_child" href="goods/search.html?cid=151">火锅丸串</a>|
                            <a class="cate_child" href="goods/search.html?cid=147">奶酪/黄油</a>|
                            <a class="cate_child" href="goods/search.html?cid=152">汤圆</a>|
                            <a class="cate_child" href="goods/search.html?cid=149">冰淇淋</a>|
                            <a class="cate_child" href="goods/search.html?cid=148">常/低温奶</a>
                        </p>
                        <p class="sub_item_cate">
                            <a class="cate_parent" href="javascript:void(0);">粮油调味&nbsp;></a>
                            <a class="cate_child" href="goods/search.html?cid=156">调味品</a>|
                            <a class="cate_child" href="goods/search.html?cid=153">方便食品</a>|
                            <a class="cate_child" href="goods/search.html?cid=157">米面杂粮</a>|
                            <a class="cate_child" href="goods/search.html?cid=154">食用油</a>|
                            <a class="cate_child" href="goods/search.html?cid=158">干货</a>|
                            <a class="cate_child" href="goods/search.html?cid=155">罐头</a>
                        </p>
                    </div>

                </div>




            </div>


        </div>
        <div class="cc">
            <ul>
                <li><a href="index.html" >网站首页</a></li>
                <li><a href="#" >品质生活</a></li>
                <li><a href="#" >品农生鲜</a></li>
                <li><a href="#" >直供专区</a></li>
                <li><a href="#" >网点分布</a></li>
                <li class="last" ><a href="#">特价专区</a></li>
            </ul>
        </div>
    </div>
</div>
<!-- 导航条 E -->


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


    <input type="hidden" id="proIdHide" value="1"/>
    <input type="hidden" id="depIdHide" value="1"/>
    <input type="hidden" id="scheduleIdHide" value=""/>

    <div class="space"></div>
    <div class="container bg-w row mt15 clearfix goods">
        <div class="intro-show m15 lc">
            <div class="show-pic">

                <img src="${pics[0]}" alt="">
            </div>
            <div class="space"></div>
            <div class="show-list pt15 pb15 clearfix">
                <div class="show-list-con">

                    <ul>
                        <c:if test="${not empty pics}">
                            <c:forEach items="${pics}" var="pic" varStatus="st">
                                <li class="${st.index}">
                                    <i class="icon-sort-up"></i><a href="javascript:void(0);"><img src="${pic}" class="img-responsive" alt=""></a>
                                </li>
                            </c:forEach>
                        </c:if>

                    </ul>

                </div>
            </div>
        </div>

        <div class="introInfo m15 rc">
            <div class="sp-name">
                <h3 class="title">${goods.good_name}</h3>
            </div>
            <div class="sp-summary  sp-summary-box sp-summary-box-skin mt15">
                <div class="summary-price clearfix">
                    <div class="dt">售价：</div>
                    <div class="dd">
                        <strong class="p-price">￥${goods.price}</strong>

                    </div>
                </div>
                <div class="summary-service clearfix">
                    <div class="dt">配送服务：</div>
                    <div class="dd">由<strong>品农网统一协调发货</strong>，并提供售后服务。</div>
                </div>
            </div>
            <div class="m-space20"></div>
            <div class="sp-summary clearfix" style="margin-left:25px;">



                <select id="aearSel" class="m-select">
                    <option value="0">==选择所在区域==</option>


                    <option value="1">弥顿道9号</option>

                    <option value="2">星光大道</option>


                </select>&nbsp;&nbsp;&nbsp;&nbsp;

                <select id="shopSel" class="m-select">
                    <option value="0">==选择配送门店==</option>

                    <option value="1">精武门</option>

                    <option value="2">芝麻开门</option>

                </select>&nbsp;&nbsp;&nbsp;&nbsp;

            </div>

            <div class="m-space20"></div>

            <div class="sp-summary clearfix m-ml10">
                <div class="input-group m-b" style="padding-left:15px; width:140px;">
                    <span class="input-group-btn minusCount"><button type="button" class="btn btn-warning glyphicon-minus"></button></span>
                    <input id="buyCountNum" type="text" name="buyCount" class="form-control buyCount text-center" maxlength="3" value="1" title="请填写本品购买数量，至少为1件"/>
                    <span class="input-group-btn plusCount"><button type="button" class="btn btn-warning glyphicon-plus"></button></span>
                </div>
            </div>

            <div class="m-space20"></div>

            <div class="sp-summary clearfix m-ml10">
                <div class="dd m-ml15">

                    <a href="shopCars/see.html" class="btn btn-lg btn-success addToShopCar">加入购物车</a>&nbsp;&nbsp;
                    <a href="shopCars/see.html" class="btn btn-lg btn-info seeShopCar">查看购物车</a>&nbsp;&nbsp;


                </div>
            </div>
            <div class="appimg">
                        <span class="txt m-ml15">
                            <!--当鼠标滑到这个span时,给icon-caret-down追加icon-caret-up，同时图片显示-->


                            <img src="assets/img/pc/weixin.jpg" width="90" height="90" alt="" style="display:none; position:absolute;">
                        </span>
            </div>

            <div class="sp-summary clearfix m-ml10">
                <p>
                    <span class="dt m-ml5">客服电话：</span>400-6286-510
                </p>
            </div>
        </div>
    </div>

    <div class="space"></div>

    <div class="container good-info">
        <div class="lc bg-w">
            <div class="sp-box">
                <div class="hd">
                    <h4>相关商品</h4>
                </div>

                <%--<script language="JavaScript">--%>
                    <%--$(function () {--%>
                        <%--$.ajax({--%>
                            <%--url:"${pageContext.request.contextPath}/goods/queryHot",--%>
                            <%--type:"GET"--%>
                        <%--}).done(function (data) {--%>
                            <%--console.log(data);--%>
                            <%--$(data).appendTo($("#hot_list"))--%>
                        <%--});--%>
                    <%--});--%>
                <%--</script>--%>
                <div id="tj" class="bd" style="padding-bottom: 0;">


                    <ul class="sp-aside-tuijian">

                        <li class="img-small">
                            <a href="goods/detail.html">
                                <img src="file/4f675886a6bb74c1636f7884a455ff2d.jpg" class="img-responsive" alt="">
                                <h5 class="mt5">平谷大桃</h5>
                            </a>
                            <p class="price">
                                <span class="nowprice"><em>￥</em><b>33.6</b></span>
                            </p>
                        </li>

                        <li class="img-small">
                            <a href="goods/detail.html?goodId=7">
                                <img src="file/7923f429a6c8af54c094e79955d13051.jpg" class="img-responsive" alt="">
                                <h5 class="mt5">黄豆</h5>
                            </a>
                            <p class="price">
                                <span class="nowprice"><em>￥</em><b>12.6</b></span>
                            </p>
                        </li>

                        <li class="img-small">
                            <a href="goods/detail.html?goodId=8">
                                <img src="file/4d6cd3c73df9a04eff2123239101d0d7.jpg" class="img-responsive" alt="">
                                <h5 class="mt5">金针菇</h5>
                            </a>
                            <p class="price">
                                <span class="nowprice"><em>￥</em><b>9.5</b></span>
                            </p>
                        </li>

                        <li class="img-small">
                            <a href="goods/detail.html?goodId=9">
                                <img src="file/345c8bd87a6f1593ff4c04f548ba1def.jpg" class="img-responsive" alt="">
                                <h5 class="mt5">700G芝麻官糖水橘子</h5>
                            </a>
                            <p class="price">
                                <span class="nowprice"><em>￥</em><b>12.5</b></span>
                            </p>
                        </li>

                        <li class="img-small">
                            <a href="goods/detail.html?goodId=10">
                                <img src="file/31285fb534437ad7c8587159462bce55.jpg" class="img-responsive" alt="">
                                <h5 class="mt5">30G美吉果芒果干</h5>
                            </a>
                            <p class="price">
                                <span class="nowprice"><em>￥</em><b>5.5</b></span>
                            </p>
                        </li>

                        <li class="img-small">
                            <a href="goods/detail.html?goodId=11">
                                <img src="file/4f675886a6bb74c1636f7884a455ff2d.jpg" class="img-responsive" alt="">
                                <h5 class="mt5">豆干</h5>
                            </a>
                            <p class="price">
                                <span class="nowprice"><em>￥</em><b>8.0</b></span>
                            </p>
                        </li>

                    </ul>

                </div>
            </div>
        </div>

        <div class="rc bg-w detail">
            <div class="sp-box">
                <div class="hd">
                    <h4 class="active"><a href="javascript:void(0);">商品详情</a></h4>

                </div>
                <div class="bd p15 goodDetail">
                    <img src="${bigPic}" alt="" />
                </div>
            </div>
        </div>
    </div>
    <div class="space"></div>
</div>

</body>
</html>
