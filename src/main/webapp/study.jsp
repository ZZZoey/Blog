<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="common/resource_css.jsp"></jsp:include>
</head>
<body>
<!-- header -->
<jsp:include page="common/header.jsp"></jsp:include>
<!-- //header -->
<div class="container">
    <div class="banner-btm-agile">

        <!-- //btm-wthree-left -->
        <div class="col-md-9 btm-wthree-left">
            <div class="events w3">
                <div class="events-main">
                    <c:forEach var="studyBlog" items="${studyBlogList}">
                        <div class="events-top">
                        <div class="col-md-5  w3ls fea-left">
                            <div class="w3agile_special_deals_grid_left_grid">
                                <a href="singlepage.jsp"><img src="${studyBlog.coverImage}" class="img-responsive"
                                                                         alt=""/></a>
                            </div>
                        </div>
                        <div class="col-md-7 wthree fea-right">
                            <h3>${studyBlog.title}</h3>
                            <p>${studyBlog.summary}</p>
                            <a class="agileits w3layouts" href="singlepage.jsp">Read More <span
                                    class="glyphicon agileits w3layouts glyphicon-arrow-right"
                                    aria-hidden="true"></span></a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    </c:forEach>
                </div>
                <nav class="events agileits">
                    ${pageNation}
                </nav>
            </div>
        </div>
        <!-- //btm-wthree-left -->
        <!-- btm-wthree-right -->
        <jsp:include page="common/right.jsp"></jsp:include>
        <!-- //btm-wthree-right -->
        <div class="clearfix"></div>
    </div>
</div>
<!-- footer -->
<jsp:include page="common/footer.jsp"></jsp:include>
<!-- footer -->
<jsp:include page="common/resource_js.jsp"></jsp:include>
</body>
</html>