<%@page pageEncoding="UTF-8" %>
	<title>欢迎注册新鲜e客_新鲜e客（pinnong.com）-通州区网购首选-正品低价、品质保障、配送及时、轻松购物</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="keywords" content="通州酒水,通州生鲜,通州水果,通州蔬菜,通州肉,通州蛋,通州促销活动,通州促销产品,北京通糖烟酒糖业有限公司,北京通州区超市"/>
    <meta http-equiv="description" content="北京通州酒水,北京通州生鲜,北京通州促销产品等,北京通州区超市连锁,北京通州区免费送货,北京通州区正品低价、品质保障、配送及时、轻松购物,北京通州新鲜e客,北京通州品质"/>
    <css>
        <link rel="stylesheet" type="text/css" href="assets/css/pc/register.css"/>
    </css>

    <js>
        <script type="text/javascript" src="assets/lib/js/jquery.hoverIntent.js"></script>
        <script type="text/javascript" src="assets/js/pc/common.js"></script>
        <script type="text/javascript" src="assets/js/pc/register.js"></script>
    </js>


    

<!-- 导航条 S -->
<div class="header">
	<div class="container">
		<div class="pull-left text-left">
			<a href="#"><img src="assets/img/pc/logo.png" width="165px" border="0"/></a>
		</div>
	</div>
</div>
<!-- 导航条 E -->
    <div class="main green-bg">
        <div class="container row">
            <div class="col-sm-6 pull-left">
                <img src="assets/img/pc/zs_register.png"/>
            </div>

            <div class="col-sm-6 pull-right regisiter-con">
                <div class="title">注册账号</div>
                <form class="form-horizontal regisit-wrap-inner" method="post" id="registerForm" onsubmit="return true;" action="${pageContext.request.contextPath}/user/signup">

                    <div class="form-group">
                        <div class="col-xs-12 errorTip">
                            ${msg}
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-12">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-phone"></span></span>
                                <input id="username" type="text" name="account" class="form-control input-lg" placeholder="手机号" maxlength="11"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                                <input id="password" type="password" name="password" minlength="6" maxlength="20" class="form-control input-lg" placeholder="设置6-20位密码">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                                <input id="rqpwd" type="password" name="rqpwd" class="form-control input-lg" minlength="6" maxlength="20" equalto="#password" placeholder="确认密码"/>
                            </div>
                        </div>
                    </div>

                    <script type="application/javascript">
                        <!--点击验证码图片实现局部刷新-->
                        $(function(){
                            $("#imgcode").click(function () {
                                var d = new Date().getTime();
                                var id = document.getElementById("imgcode").src="/yzm?d"+d;
                            });
                        });
                    </script>

                    <div class="form-group">
                        <div class="col-xs-12">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-text-width"></span></span>
                                <input type="text" id="verificationCode" name="verificationCode" class="form-control input-lg" placeholder="随机验证码" maxlength="6"/>
                                <a data-disabled="0" href="javascript:void(0);" class="input-group-addon codeImg"><img id="imgcode" src="/yzm" title="看不清,换一张"></a>
                            </div>
                        </div>
                    </div>

                    <script type="application/javascript">
                        //#dxyzm   验证码输入框
                        var time = 10;
                        var timer=null;
                        function changeStatus() {
                            //.btnSendMessage  获取短信验证码
                            $(".btnSendMessage").text(time+"秒后重新发送");
                            time--;
                            if(time<=0){
                                time=10;
                                $(".btnSendMessage").text("获取短信验证码");
                                window.clearTimeout(timer);
                                $(".btnSendMessage").removeAttr("disabled")
                                return;
                            }else{
                                timer=setTimeout(changeStatus,1000) ;
                            }
                        }
                        $(function () {
                            $(".btnSendMessage").click(function () {
                                if($(".btnSendMessage").attr("disabled")){
                                    return false;
                                }

                                $(".btnSendMessage").attr("disabled",true);
                                console.log(">>>>>>>>>>>");
                                $.ajax({
                                    url:"${pageContext.request.contextPath}/user/msgsend",
                                    type:"post",
                                    dataType:"json",
                                }).done(function (data) {

                                    $("#dxyzm").val(data.msgCode);
                                    changeStatus();
                                });
                            });
                        });
                    </script>

                    <div class="form-group">
                        <div class="col-xs-12">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-text-width"></span></span>
                                <input type="text" id="dxyzm" name="dxyzm" class="form-control input-lg" placeholder="短信验证码" maxlength="6"/>
                                <a  href="javascript:void(0);" class="input-group-addon btnSendMessage">获取短信验证码</a>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12 text-left">
                            <div class="checkbox checked">
                                <label>
                                    <input id="ctchk" type="checkbox" checked="">我已阅读并同意《用户注册协议》
                                    <a href="members/login" style="position: relative;left: 85px;">立即登录</a>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="space"></div>
                    <div class="form-group">
                        <div class="col-xs-12">
                            <button type="submit" class="col-xs-12 btn btn-success btn-lg registerBtn">立即注册</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
