/**
 * FileName: BaseServlet
 * Author:   Ageek-姚树友
 * Date:     17-11-13 下午2:59
 * Description:
 */

package cn.itlaobing.eshop.web.servlet;

import cn.itlaobing.eshop.web.annotation.RequestMapping;
import org.apache.log4j.Logger;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

public class BaseServlet extends HttpServlet {
    protected  Logger log = Logger.getLogger(this.getClass());
    private Map<String,Method> methodMap = new HashMap<String,Method>();

    @Override
    public void init(ServletConfig config) throws ServletException {
        //通过反射得到本类
        Class clz = this.getClass();
        //得到WebServlet中url
        WebServlet webServlet = (WebServlet) clz.getAnnotation(WebServlet.class);
        String baseUrl = webServlet.value()[0];
        //取到servlet类中的所有方法
        Method[] methods = clz.getDeclaredMethods();
        for(Method m:methods){
            //判断servlet中是否由url
            if(m.isAnnotationPresent(RequestMapping.class)){
                RequestMapping requestMapping = m.getAnnotation(RequestMapping.class);
                String url = requestMapping.value();
                if(!url.startsWith("/")){
                    url = "/"+url;
                }
                String fullUrl = baseUrl.replace("/*","")+url;
                methodMap.put(fullUrl,m);
            }
        }
    }
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //取得请求中url
        String url = req.getRequestURI();
        //得到map集合中对应的方法
        Method method = methodMap.get(url);
        if(method==null){
            resp.sendError(404,"请求资源路径错误!");
            return;
        }
        try {
            method.invoke(this,req,resp);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
    }

    /**
     * 请求转发
     * */
    public static final String PREFIX="/WEB-INF/views/";
    public static final String SUBBFIX=".jsp";
    public void toView(HttpServletRequest request,HttpServletResponse response,String path) throws ServletException, IOException {
        request.getRequestDispatcher(PREFIX+path+SUBBFIX).forward(request,response);
    }

    public void responseTo(HttpServletResponse response,String path) throws IOException {
        String contextPath = super.getServletContext().getContextPath();
        if(!"/".startsWith(path)){
            path = "/"+path;
        }
        response.sendRedirect(contextPath+path);
    }


}
