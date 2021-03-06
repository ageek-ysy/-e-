<%@page pageEncoding="UTF-8" %>
<html>
<head>
    <base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}">
    <title>欢迎登录新鲜e客_新鲜e客（pinnong.com）-通州区网购首选-正品低价、品质保障、配送及时、轻松购物</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="keywords" content="通州酒水,通州生鲜,通州水果,通州蔬菜,通州肉,通州蛋,通州促销活动,通州促销产品,北京通糖烟酒糖业有限公司,北京通州区超市"/>
    <meta http-equiv="description" content="北京通州酒水,北京通州生鲜,北京通州促销产品等,北京通州区超市连锁,北京通州区免费送货,北京通州区正品低价、品质保障、配送及时、轻松购物,北京通州新鲜e客,北京通州品质"/>

    <link rel="stylesheet" href="assets/lib/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="assets/lib/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="assets/lib/css/animate.css"/>
    <link rel="stylesheet" href="assets/lib/css/style.css"/>

    <link rel="stylesheet" type="text/css" href="assets/css/pc/common.css"/>
    <link rel="stylesheet" type="text/css" href="assets/css/pc/login.css"/>

    <script type="text/javascript" src="assets/lib/js/jquery-1.12.3.min.js"></script>
    <script type="text/javascript" src="assets/lib/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="assets/lib/js/jquery.hoverIntent.js"></script>
    <script type="text/javascript" src="assets/js/pc/common.js"></script>
    <script type="text/javascript" src="assets/js/pc/login.js"></script>

</head>
<body>




<link rel="stylesheet" type="text/css" href="assets/css/pc/common.css"/>
<script type="text/javascript" src="assets/lib/js/jquery.hoverIntent.js"></script>
<script type="text/javascript" src="assets/js/pc/menu.js"></script>

<!-- 顶部 S -->
<div class="top">
	<div class="container">
		<div class="lc">

		</div>

		<div class="rc">

				您好，请<a href="${pageContext.request.contextPath}/turnto/signin" style="margin:0;">登录</a>&nbsp;
				<a href="${pageContext.request.contextPath}/turnto/register">免费注册</a>&nbsp;|
				<a href="members/info.html">会员中心</a>&nbsp;|



			<a href="http://www.ttlsgs.com/downloads/down">APP下载</a>



		</div>
	</div>
</div>
<!-- 顶部 E -->

<!-- 导航条 S -->
<div class="header">
	<div class="container">
		<div class="pull-left text-left">
			<a href="/"><img src="assets/img/pc/logo.png" width="165px" border="0"/></a>
		</div>
	</div>
</div>
<!-- 导航条 E -->


    <div class="main green-bg">
        <div class="container row">
            <div class="col-sm-6 pull-left">
                <img src="assets/img/pc/login-bg.png"/>
            </div>

            <div class="col-sm-6 pull-right">
                <div class="login-box">
                    <div class="login-title">账户登录</div>
                    <div class="login-content">
                        <form action="${pageContext.request.contextPath}/user/signin" method="post" id="loginForm" onsubmit="return true;">
                            <input type="hidden" class="loginToPage" value="-2"/>

                            <div class="form-group" style="margin-bottom: 0;">
                                <div class="col-xs-12 errorTip">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-12">
                                    <div class="input-group">
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                                        <input type="text" id="username" name="username" class="form-control input-lg" value="${sessionScope.account}" placeholder="请输入手机号" maxlength="11"/>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-12">
                                    <div class="input-group">
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                                        <input type="password" id="password" name="password" class="form-control input-lg" value="" placeholder="请输入登录密码" maxlength="20"/>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-12">
                                    <button type="submit" class="col-xs-12 btn btn-success btn-lg loginBtn">立即登录</button>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-6 link text-left">
                                    <p class="remove-margin"><a href="members/forgotPwd.html">忘记密码?</a></p>
                                </div>
                                <div class="col-xs-6 link">
                                    <p class="remove-margin text-right"><a href="members/register.html">免费注册</a></p>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <div class="space"></div>
    <div class="text-center">
        Copyright © 2015 PinNong.All Rights Reserved | 备案号：京ICP备16048908号 北京通糖烟酒有限公司 版权所有
    </div>
</body>
</html>
