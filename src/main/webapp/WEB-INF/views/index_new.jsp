<%--
  Created by IntelliJ IDEA.
  User: ysy
  Date: 17-11-14
  Time: 下午3:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<ul>

    <c:if test="${empty goodsNew}">
        <li>空的额</li>
    </c:if>

    <c:if test="${not empty goodsNew}">
        <c:forEach items="${goodsNew}" var="gn" varStatus="vs">
            <li ${vs.count%3==0?"class='trLast'":""} >
                <a target="_blank" href="goods/detail.html?goodId=15"><img src="${gn.picUrl}"/></a><br/>
                <a target="_blank" href="goods/detail.html?goodId=15" class="title">${gn.good_name}</a><br/>
                <span class="price">${gn.price}</span>
            </li>
        </c:forEach>
    </c:if>
</ul>
