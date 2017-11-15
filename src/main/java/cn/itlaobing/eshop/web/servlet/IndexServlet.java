/**
 * FileName: IndexServlet
 * Author:   Ageek-姚树友
 * Date:     17-11-13 下午2:50
 * Description:
 */

package cn.itlaobing.eshop.web.servlet;

import cn.itlaobing.eshop.entity.ItlbFocuss;
import cn.itlaobing.eshop.exception.MyBizException;
import cn.itlaobing.eshop.service.SlideShowService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/index")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        SlideShowService showService = new SlideShowService();
        List<ItlbFocuss> list = null;
        try {
            list = showService.queryAllPhoto();
            req.setAttribute("photoList",list);
            req.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(req,resp);
        } catch (MyBizException e) {
            e.printStackTrace();
        }
    }
}
