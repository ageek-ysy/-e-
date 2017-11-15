/**
 * FileName: TurnToServlet
 * Author:   Ageek-姚树友
 * Date:     17-11-15 上午11:26
 * Description:
 */

package cn.itlaobing.eshop.web.servlet;

import cn.itlaobing.eshop.web.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/turnto/*")
public class TurnToServlet extends BaseServlet {

    @RequestMapping("/register")
    public void toRegister(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
        toView(request,response,"members/register");
    }
}
