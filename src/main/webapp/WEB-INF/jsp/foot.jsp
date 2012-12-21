<%--
    Document   : foot
    Created on : 2012-12-15, 14:58:31
    Author     : rAy <predator.ray@gmail.com>
--%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
            </div>

            <div id="sidebar">
                <ul>
                    <li class="categories"><h4>分类</h4>
                        <ul>
                            <c:forEach items="${categoryList}" var="category">
                                <li class="cat-item">
                                    <a href="/category/<c:out value="${category.categoryId}"/>"><c:out value="${category.name}"/></a>
                                </li>
                            </c:forEach>
                        </ul>
                    </li>
                    <li>
                        <h4>归档</h4>
                        <ul>
                            <c:forEach items="${archivelist}" var="archive">
                                <li><a href="/archive/<c:out value="${archive.year}"/>/<c:out value="${archive.month}"/>"><c:out value="${archive.year}"/>年<c:out value="${archive.month}"/>月</a>&nbsp;(<c:out value="${archive.count}"/>)</li>
                            </c:forEach>
                        </ul>
                    </li>

                    <li id="linkcat-4" class="linkcat"><h4>链接</h4>
                        <ul class="xoxo blogroll">
                            <c:forEach items="${linkList}" var="link">
                                <li><a href="${link.url}" title="${link.title}"><c:out value="${link.title}"/></a></li>
                            </c:forEach>
                        </ul>
                    </li>

                    <li><h4>功能</h4>
                        <ul>
                            <c:choose>
                                <c:when test="${empty userAuth}">
                                    <li><a href="/login">登录</a></li>
                                </c:when>
                                <c:otherwise>
                                    <li><a href="/admin/admin.jsp">控制板</a></li>
                                    <li><a href="/logout?redirect">登出</a></li>
                                </c:otherwise>
                            </c:choose>
                        </ul>
                    </li>
                </ul>
            </div>

            <div class="clear"></div>
            <div id="footer">
                <div class="alignright">
                    <a href="#page" class="top">顶部</a>
                    <a href="/rss" class="rss">订阅</a>
                    <a href="/" class="home">主页</a>
                </div>
                <a href="http://www.tammyhartdesigns.com/fifty-fifth-street">Fifty Fifth Street</a> theme by <a href="http://www.tammyhartdesigns.com/">Tammy Hart Designs</a><br>
                    Powered by <a href="https://github.com/JellyJollyTeam">JellyJolly</a>
            </div>
        </div>
    </body>
</html>