
<%@ page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<ul>
    <c:if test="${empty goodsHot}">
        <li>空的</li>
    </c:if>
    <c:if test="${not empty goodsHot}">
        <c:forEach items="${goodsHot}" var="gdl" varStatus="st">
            <li ${st.count%3==0?"class='trLast'":""}>
                <a target="_blank" href="${pageContext.request.contextPath}/goods/queryDetail?id=${gdl.id}"><img src="${gdl.picUrl}"/><br/>
                <a target="_blank" href="views/goods/detail.jsp" class="title">${gdl.good_name}</a><br/>
                <span class="price">${gdl.price}</span>
            </li>
        </c:forEach>
    </c:if>
</ul>