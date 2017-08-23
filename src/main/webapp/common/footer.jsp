<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: LSY
  Date: 2017/8/17
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<div class="footer-agile-info">
    <div class="container">
        <div class="col-md-4 w3layouts-footer">
            <h2 class="footer-title">博主名片</h2>
            <p><span><i class="fa fa-user" aria-hidden="true"></i></span>网名：Zoey</p>
            <p><span><i class="fa fa-map-marker" aria-hidden="true"></i></span>坐标：广东</p>
            <p><span><i class="fa fa-envelope" aria-hidden="true"></i></span>邮箱: 1439685884@qq.com</p>
            <p><span><i class="fa fa-star" aria-hidden="true"></i></span>学校：华南师范大学</p>
        </div>
        <div class="col-md-4 wthree-footer">
            <h2 class="footer-title">程序统计</h2>
            <table>
                <tr>
                    <td><p><span><i class="fa fa-edit" aria-hidden="true"></i></span><a>文章：${blogCount}篇</a></p></td>
                    <td><p><span><i class="fa fa-tags" aria-hidden="true"></i></span><a>标签：${tagCount}个</a></p></td>
                </tr>
                <tr>
                    <td><p><span><i class="fa fa-comments-o" aria-hidden="true"></i></span><a>评论：${commentCount}条</a></p></td>
                    <td><p><span><i class="fa fa-smile-o" aria-hidden="true"></i></span><a>留言：${messageCount}条</a></p></td>
                </tr>
                <tr>
                    <td><p><span><i class="fa fa-external-link" aria-hidden="true"></i></span><a>友链：${linkList.size()}个</a></p></td>
                    <td><p><span><i class="fa fa-heart" aria-hidden="true"></i></span><a>点赞：1次</a></p></td>
                </tr>
                <tr>
                    <td><p><span><i class="fa fa-eye" aria-hidden="true"></i></span><a>访问：${visitCount}次</a></p></td>
                    <td><p><span><i class="fa fa-spinner" aria-hidden="true"></i></span><a id="showsectime"></a></p></td>
                </tr>
            </table>
        </div>
        <div class="col-md-4 w3-agile">
            <h2 class="footer-title">关于本站</h2>
            <div class="footer-block">
                <div class="kuang">
                    <c:forEach var="log" items="${logList}">
                        <div class="block-bar">
                            <div class="box"><span><fmt:formatDate value="${log.createTime}" pattern="yyyy-MM-dd"/></span>${log.content}</div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- copyright -->
<div class="copyright">
    <div class="container">
        <div class="agileinfo">
            <p>© 2017 Zoey . All Rights Reserved . </p>
        </div>
    </div>
</div>
<!-- //copyright -->