/**
 * FileName: GoodsServlet
 * Author:   Ageek-姚树友
 * Date:     17-11-14 上午10:34
 * Description:
 */

package cn.itlaobing.eshop.web.servlet;

import cn.itlaobing.eshop.entity.Itlb_goods;
import cn.itlaobing.eshop.entity.dto.GoodsDto;
import cn.itlaobing.eshop.exception.MyBizException;
import cn.itlaobing.eshop.service.impl.GoodsServiceImpl;
import cn.itlaobing.eshop.service.GoodsService;
import cn.itlaobing.eshop.web.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet("/goods/*")
public class GoodsServlet extends BaseServlet {

    @RequestMapping("/queryDetail")
    public void doQueryGoodById(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        String strid = request.getParameter("id");
        GoodsService gs = new GoodsServiceImpl();
        try {
            Long id = Long.valueOf(strid);
            Itlb_goods goods = gs.detailGoods(id);
            String detail = goods.getDetail();
            //得到所有的图片
            String[] picUrls = detail.split(";");
            //取到底下最大的图片file/2e58138de73157982bbe5c93340198b2.jpg
            String bigPic = picUrls[picUrls.length-1];
            //抽出要显示的三张图片
            String[] pics = Arrays.copyOf(picUrls,picUrls.length-1);
            request.setAttribute("bigPic",bigPic);
            request.setAttribute("goods",goods);
            request.setAttribute("pics",pics);
            toView(request,response,"goods/detail");
        } catch (MyBizException e) {
            e.printStackTrace();
        } catch (NumberFormatException e){
            e.printStackTrace();
        }
    }

    @RequestMapping("/queryNew")
    public void doQueryNew(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        GoodsService gs = new GoodsServiceImpl();
        List<GoodsDto> list = null;
        try {
            list = gs.queryNew();
            request.setAttribute("goodsNew",list);
            toView(request,response,"/index_new");
        } catch (MyBizException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping("/queryHot")
    public void doQueryHot(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        GoodsService gs = new GoodsServiceImpl();
        List<GoodsDto> goodsDtoList = null;
        try {
            goodsDtoList = gs.queryHot();
            request.setAttribute("goodsHot",goodsDtoList);
            toView(request,response,"index_hot");
        } catch (MyBizException e) {
            e.printStackTrace();
        }
    }
}
