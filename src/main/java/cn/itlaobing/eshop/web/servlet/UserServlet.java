/**
 * FileName: UserServlet
 * Author:   Ageek-姚树友
 * Date:     17-11-15 下午8:13
 * Description:
 */

package cn.itlaobing.eshop.web.servlet;

import cn.itlaobing.eshop.entity.MsgToken;
import cn.itlaobing.eshop.entity.Users;
import cn.itlaobing.eshop.exception.MyBizException;
import cn.itlaobing.eshop.service.UserService;
import cn.itlaobing.eshop.service.impl.UserServiceImpl;
import cn.itlaobing.eshop.web.annotation.RequestMapping;
import com.alibaba.fastjson.JSON;
import com.google.code.kaptcha.Constants;
import org.apache.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

@WebServlet("/user/*")
public class UserServlet extends BaseServlet {
    private Logger logger = Logger.getLogger(UserServlet.class);
    private static final String MSG_TOKEN_IN_SESSION = "MSG_TOKEN_IN_SESSION";



    @RequestMapping("/msgsend")
    public void doMsgSend(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        String dxyzm = request.getParameter("dxyzm");
        //判断手机验证码
        HttpSession session = request.getSession();
        MsgToken msgToken = (MsgToken) session.getAttribute(MSG_TOKEN_IN_SESSION);
        if (msgToken!=null){
            //获得时间戳
            Long diff = System.currentTimeMillis()-msgToken.getCreateAt();
            if (diff<10*1000){
                //60秒内不允许再次发送短信
                Map<String,Object> map = new HashMap<String,Object>();
                map.put("success",false);
                map.put("msg","验证码已发送");
                response.setContentType("application/json;charset=utf-8");
                response.getWriter().write(JSON.toJSONString(map));
                return;
            }
        }

        //msgToken为null时
        msgToken = new MsgToken();
        msgToken.setCreateAt(System.currentTimeMillis());
        msgToken.setPhone(dxyzm);
        //得到随机生成的一个验证码
        String msgCode = getMsgCode();
        //放入msgToken中
        msgToken.setMsgCode(msgCode);
        logger.info("短信验证码:"+msgCode);
        session.setAttribute(MSG_TOKEN_IN_SESSION,msgToken);
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("success",true);
        map.put("msg","验证码已发送");
        map.put("msgCode",msgCode);
        response.setContentType("application/json;charset=utf-8");
        response.getWriter().write(JSON.toJSONString(map));
    }

    /**
     * 模拟第三方短信接口
     * 获得随机数字验证码
     * @return
     */

    private String getMsgCode() {
        String num = "0123456789";
        Random r = new Random(System.currentTimeMillis());
        StringBuffer sb = new StringBuffer();
        for (int i=0;i<6;i++){
            int idx = r.nextInt(num.length());
            sb.append(num.charAt(idx));
        }
        return sb.toString();
    }



    @RequestMapping("/signup")
    public void doSignUp(HttpServletRequest request, HttpServletResponse response) throws ServletException, SQLException, IOException {
        request.setCharacterEncoding("utf-8");
        String account = request.getParameter("account");//账户(手机号)
        String password = request.getParameter("password");//密码
        String rqpwd = request.getParameter("rqpwd");//重复密码
        String verificationCode = request.getParameter("verificationCode");
        String dxyzm = request.getParameter("dxyzm");//短信验证码

        //判断密码和重复密码
        if (!(password.equals(rqpwd))) {
            request.setAttribute("msg", "两次密码不一样");
            toView(request,response,"members/register");
            return;
        }
        //判断Google验证码
        String googleCode = request.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY).toString();
        if (!(verificationCode.equals(googleCode))) {
            request.setAttribute("msg", "请输入正确的验证码");
            toView(request,response,"members/register");
            return;
        }
        //判断短信验证码
        MsgToken msgToken = (MsgToken) request.getSession().getAttribute(MSG_TOKEN_IN_SESSION);
        logger.info(msgToken.getMsgCode());
        String msgcode = msgToken.getMsgCode();
        if(!(dxyzm.equals(msgcode))){
            request.setAttribute("msg", "手机验证码不合适");
            toView(request,response,"members/register");
            return;
        }




        try {
            UserService us = new UserServiceImpl();
            Users user = us.getUser(account);
            if (user!=null){
                //验证手机账号是否存在
                request.setAttribute("msg", "手机已经注册,请重新注册!");
                toView(request,response,"members/register");
                return;
            }
            int value = us.signup(account,password);
            if(value>0){
                //注册成功
                request.getSession().setAttribute("account",account);
                response.sendRedirect(request.getContextPath()+"/turnto/signin");
                return;
            }
        } catch (MyBizException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping("/signin")
    public void doSignIn(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        request.setCharacterEncoding("utf-8");
        String account = request.getParameter("username");
        String password = request.getParameter("password");
        UserService us = new UserServiceImpl();
        try {
            Users user = us.signin(account,password);
            if (user !=null){
                //当user不为null,说明登录成功
                request.setAttribute("user",user);
                toView(request,response,"/index");
                return;
            }
        } catch (MyBizException e) {
            e.printStackTrace();
        }
    }






}
