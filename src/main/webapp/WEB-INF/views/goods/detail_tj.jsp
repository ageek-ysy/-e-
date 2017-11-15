<%--
  Created by IntelliJ IDEA.
  User: ysy
  Date: 17-11-15
  Time: 下午4:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<ul class="sp-aside-tuijian">
    <c:if test="${not empty goodsHot }">
        <c:forEach items="${goodsHot}" var="gh">
            <li class="img-small">
                <a href="goods/detail.html">
                    <img src="${gh.picUrl}" class="img-responsive" alt="">
                    <h5 class="mt5">${gh.good_name}</h5>
                </a>
                <p class="price">
                    <span class="nowprice"><em>￥</em><b>${gh.price}</b></span>
                </p>
            </li>
        </c:forEach>
    </c:if>
</ul>
