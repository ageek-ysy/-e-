/**
 * FileName: UserServlet
 * Author:   Ageek-姚树友
 * Date:     17-11-15 下午8:13
 * Description:
 */

package cn.itlaobing.eshop.web.servlet;

import cn.itlaobing.eshop.entity.MsgToken;
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
    @RequestMapping("/code")
    public void verificationCode(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{


    }

    @RequestMapping("/signup")
    public void doSignup(HttpServletRequest request, HttpServletResponse response) throws ServletException, SQLException, IOException {
        request.setCharacterEncoding("utf-8");
        String account = request.getParameter("account");//账户(手机号)
        String password = request.getParameter("password");//密码
        String rqpwd = request.getParameter("rqpwd");//重复密码
        String verificationCode = request.getParameter("verificationCode");
        String dxyzm = request.getParameter("dxyzm");//短信验证码

        //判断密码和重复密码
        if (!password.equalsIgnoreCase(rqpwd)){
            request.setAttribute("msg","两次密码不一样");
            return;
        }
        //判断Google验证码
        String googleCode = request.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY).toString();
        if (!verificationCode.equalsIgnoreCase(googleCode)){
            request.setAttribute("msg","请输入正确的验证码");
            return;
        }


        HttpSession session = request.getSession();
        MsgToken msgToken = (MsgToken) session.getAttribute(MSG_TOKEN_IN_SESSION);
        if (msgToken!=null){
            //获得时间戳
            Long diff = System.currentTimeMillis()-msgToken.getCreateAt();
            if (diff<60*1000){
                //60秒内不允许再次发送短信
                Map<String,Object> map = new HashMap<String,Object>();
                map.put("success",false);
                map.put("msg","验证码已发送");
                response.setContentType("application/json;charset=utf-8");
                response.getWriter().write(JSON.toJSONString(map));
                return;
            }
        }

        msgToken = new MsgToken();
        msgToken.setCreateAt(System.currentTimeMillis());
        msgToken.setPhone(dxyzm);
        String msgCode = getMsgCode();
        msgToken.setMsgCode(msgCode);
        logger.info("短信验证码"+msgCode);
        session.setAttribute(MSG_TOKEN_IN_SESSION,msgToken);
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("success",true);
        map.put("msg","验证码已发送");
        response.setContentType("application/json;charset=utf-8");
        response.getWriter().write(JSON.toJSONString(map));
    }

    /**
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

}
