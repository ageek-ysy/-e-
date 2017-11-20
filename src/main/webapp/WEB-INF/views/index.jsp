<%@page pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<title>新鲜e客（pinnong.com）-通州区网购首选-正品低价、品质保障、配送及时、轻松购物</title>
	<js>
		<script type="text/javascript" src="assets/js/pc/index.js"></script>
	</js>
	<css>
		<link rel="stylesheet" type="text/css" href="assets/css/pc/index_pn.css"/>
	</css>

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
				<li><a href="index.jsp"  class="curr">网站首页</a></li>
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

	<div class="container" style="padding-top:0;">

		<div id="myCarousel" class="carousel slide">
			<ol class="carousel-indicators">
				<c:forEach items="${photoList}" varStatus="start">
					<li xdata-target="#myCarousel" data-slide-to="${start.index}" class="active"></li>
				</c:forEach>
			</ol>
			<div id="myCarouselDiv" class="carousel-inner">

				<c:if test="${ not empty photoList}">
					<c:forEach items="${photoList}" var="photo" varStatus="start">
						<div class="item ${start.index==0?'active':''}"
							 style="background:url('${photo.img}') center no-repeat; width:100%; height:520px; cursor: pointer">
						</div>
					</c:forEach>
				</c:if>
			</div>
		</div>

		<div>
			<div class="pro-cate-con pro-cate-con-l">
				<div class="top-c">
					<span class="zs">1</span>
					<span class="title">
                        热销产品
                    </span>
				</div>
				<script language="JavaScript">
					$(function () {
						$.ajax({
							url:"${pageContext.request.contextPath}/goods/queryHot",
							type:"GET"
                        }).done(function (data) {
                            console.log(data);
                            $(data).appendTo($("#hot_list"))
                        });
                    });
				</script>
				<div id="hot_list" class="bottom-c">
					<!--这里是热销产品-->
				</div>
			</div>

			<div class="pro-cate-con pro-cate-con-r">
				<div class="top-c">
					<span class="zs">2</span>
					<span class="title">
                        最新上架
                    </span>
				</div>
				<script language="JavaScript">
                    $(function () {
                        $.ajax({
                            url:"${pageContext.request.contextPath}/goods/queryNew",
                            type:"GET"
                        }).done(function (data) {
                            console.log(data);
                            $(data).appendTo($("#new_list"))
                        });
                    });
				</script>

				<div id="new_list" class="bottom-c">
						<!--显示最新上架商品-->
					</div>
			</div>
		</div>

		<div class="space"></div>

		<div>
			<img src="assets/img/pc/zs_3.png" class="tt-img"/>
		</div>

		<div class="space"></div>

		<div>
			<div class="pro-cate-con pro-cate-con-l">
				<div class="top-c">
					<a href="#" class="more">更多+</a>
					<span class="zs">3</span>
					<span class="title">
                        品质生活
                    </span>
				</div>
				<div class="bottom-c">


					<ul>

						<li >

							<a target="_blank" href="goods/detail.html?goodId=20"><img src="file/8a0263067fcab45e11965ddcf4d749f5_25.jpg"/></a><br/>
							<a target="_blank" href="goods/detail.html?goodId=20" class="title">450G三全猪肉大葱饺子</a><br/>
							<span class="price">￥7.5</span>

						</li>

						<li >

							<a target="_blank" href="goods/detail.html?goodId=19"><img src="file/9c00dd6f8e350263b39e58991963fdd5_25.jpg"/></a><br/>
							<a target="_blank" href="goods/detail.html?goodId=19" class="title">23.8g铁盒绿箭薄荷糖（黑加仑）</a><br/>
							<span class="price">￥9.0</span>

						</li>

						<li  class="trLast">

							<a target="_blank" href="goods/detail.html?goodId=18"><img src="file/136a073220b42f44c485cef3951fb49a_25.jpg"/></a><br/>
							<a target="_blank" href="goods/detail.html?goodId=18" class="title">75g乐事薯片(黄瓜)</a><br/>
							<span class="price">￥5.9</span>

						</li>

						<li >

							<a target="_blank" href="goods/detail.html?goodId=17"><img src="file/229f195355d94cecfe4f6de36c443167_25.jpg"/></a><br/>
							<a target="_blank" href="goods/detail.html?goodId=17" class="title">165g大宝SOD蜜1*8</a><br/>
							<span class="price">￥16.5</span>

						</li>

						<li >

							<a target="_blank" href="goods/detail.html?goodId=16"><img src="file/c580eedbbd267151adba534796057893_25.jpg"/></a><br/>
							<a target="_blank" href="goods/detail.html?goodId=16" class="title">15年500ML茅台</a><br/>
							<span class="price">￥5800.0</span>

						</li>

						<li  class="trLast">

							<a target="_blank" href="goods/detail.html?goodId=15"><img src="file/ccb0232822483becc481c1b480b5d465_25.jpg"/></a><br/>
							<a target="_blank" href="goods/detail.html?goodId=15" class="title">500g威猛强力洁厕液（清香）</a><br/>
							<span class="price">￥4.9</span>

						</li>

					</ul>

				</div>
			</div>

			<div class="pro-cate-con pro-cate-con-r">
				<div class="top-c">
					<a href="#" class="more">更多+</a>
					<span class="zs">4</span>
					<span class="title">
                        品农生鲜
                    </span>
				</div>
				<div class="bottom-c">


					<ul>

						<li >

							<a target="_blank" href="goods/detail.html?goodId=21"><img src="file/8df085ed9fbe8fa3cd1d0711580c7b3d_25.jpg"/></a><br/>
							<a target="_blank" href="goods/detail.html?goodId=21" class="title">香菜</a><br/>
							<span class="price">￥0.0</span>

						</li>

						<li >

							<a target="_blank" href="goods/detail.html?goodId=12"><img src="file/4f7a4b5caf0be541eb26395b035f5fac_25.jpg"/></a><br/>
							<a target="_blank" href="goods/detail.html?goodId=12" class="title">面条</a><br/>
							<span class="price">￥2.6</span>

						</li>

						<li  class="trLast">

							<a target="_blank" href="goods/detail.html?goodId=11"><img src="file/4f675886a6bb74c1636f7884a455ff2d_25.jpg"/></a><br/>
							<a target="_blank" href="goods/detail.html?goodId=11" class="title">豆干</a><br/>
							<span class="price">￥8.0</span>

						</li>

						<li >

							<a target="_blank" href="goods/detail.html?goodId=10"><img src="file/31285fb534437ad7c8587159462bce55_25.jpg"/></a><br/>
							<a target="_blank" href="goods/detail.html?goodId=10" class="title">30G美吉果芒果干</a><br/>
							<span class="price">￥5.5</span>

						</li>

						<li >

							<a target="_blank" href="goods/detail.html?goodId=9"><img src="file/345c8bd87a6f1593ff4c04f548ba1def_25.jpg"/></a><br/>
							<a target="_blank" href="goods/detail.html?goodId=9" class="title">700G芝麻官糖水橘子</a><br/>
							<span class="price">￥12.5</span>

						</li>

						<li  class="trLast">

							<a target="_blank" href="goods/detail.html?goodId=8"><img src="file/4d6cd3c73df9a04eff2123239101d0d7_25.jpg"/></a><br/>
							<a target="_blank" href="goods/detail.html?goodId=8" class="title">金针菇</a><br/>
							<span class="price">￥9.5</span>

						</li>

					</ul>

				</div>
			</div>
		</div>
	</div>
