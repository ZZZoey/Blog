<%--
  Created by IntelliJ IDEA.
  User: LSY
  Date: 2017/8/17
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<div class="col-md-3 w3agile_blog_left">
    <div class="wthreesearch">
        <form action="search.do" method="post">
            <input type="search" name="s_title" placeholder="Search here" required="">
            <button type="submit" class="btn btn-default search" aria-label="Left Align">
                <i class="fa fa-search" aria-hidden="true"></i>
            </button>
        </form>

    </div>

    <div class="agileinfo_calender">
        <h3>微信公众号</h3>
        <div class="w3ls-social-icons-1">
            <img src="images/QRcode.jpg" class="img-responsive"/>
            <h5><i class="fa fa-comments" aria-hidden="true"></i>扫码关注个人公众号，得到及时的文章推送信息。</h5>
        </div>
    </div>
    <div class="w3ls_popular_posts">
        <h3>推荐博文</h3>
        <c:forEach var="recommendBlog" items="${recommendBlogList}">
            <div class="agileits_popular_posts_grid">
                <div class="w3agile_special_deals_grid_left_grid">
                    <a href="singlepage.jsp"><img src="${recommendBlog.coverImage}" class="img-responsive" alt=""/></a>
                </div>
                <h4><a href="singlepage.jsp">${recommendBlog.title}</a></h4>
                <h5><i class="fa fa-calendar" aria-hidden="true"></i><fmt:formatDate value="${recommendBlog.createTime}"
                                                                                     pattern="yyyy-MM-dd HH:mm:ss"/>
                </h5>
            </div>
        </c:forEach>
    </div>

    <div class="w3ls_recent_posts">
        <h3>点击排行</h3>
        <c:forEach var="hotBlog" items="${hotBlogList}">
            <div class="agileits_recent_posts_grid">
                <div class="agileits_recent_posts_gridl">
                    <div class="w3agile_special_deals_grid_left_grid">
                        <a href="singlepage.jsp"><img src="${hotBlog.coverImage}" class="img-responsive" alt=""/></a>
                    </div>
                </div>
                <div class="agileits_recent_posts_gridr">
                    <h4><a href="singlepage.jsp">${hotBlog.title}</a></h4>
                    <h5><i class="fa fa-calendar" aria-hidden="true"></i><fmt:formatDate value="${hotBlog.createTime}"
                                                                                         pattern="yyyy-MM-dd HH:mm:ss"/>
                    </h5>
                </div>
                <div class="clearfix"></div>
            </div>
        </c:forEach>
    </div>


    <div class="w3l_categories">
        <h3>日期归档</h3>
        <ul>
            <c:forEach var="filingDate" items="${filingDateList }">
                <li><a href="filingDate.html?createTime=${filingDate.filingDate}"><span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span>${filingDate.filingDate }(${filingDate.total })</a></li>
            </c:forEach>
        </ul>
    </div>

    <div class="w3l_tags">
        <h3>标签云</h3>
        <div id='tag-cloud'></div>
    </div>

    <div class="w3ls_recent_posts">
        <h3>友情链接</h3>
        <ul class="tag">
            <c:forEach var="link" items="${linkList}">
                <li><a href="${link.url}">${link.name}</a></li>
            </c:forEach>
        </ul>
    </div>
</div>
