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
                    <c:forEach var="blog" varStatus="status" items="${blogList}">
                        <c:choose>
                            <c:when test="${status.count%2!=0}">
                                <div class="events-top">
                                    <div class="col-md-6  w3ls fea-left">
                                        <div class="w3agile_special_deals_grid_left_grid">
                                            <a href="blogDetail.jsp"><img src="${blog.coverImage}" class="img-responsive"
                                                                          alt=""/></a>
                                        </div>
                                    </div>
                                    <div class="col-md-6 wthree fea-right">
                                        <h3>${blog.title}</h3>
                                        <p>${blog.summary}</p>
                                        <a class="agileits w3layouts" href="blogDetail.jsp">Read More <span
                                                class="glyphicon agileits w3layouts glyphicon-arrow-right"
                                                aria-hidden="true"></span></a>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <div class="events-top">
                                    <div class="col-md-6  w3-agile fea-right">
                                        <h3>${blog.title}</h3>
                                        <p>${blog.summary}</p>
                                        <a class="agileits w3layouts" href="blogDetail.jsp">Read More <span
                                                class="glyphicon agileits w3layouts glyphicon-arrow-right"
                                                aria-hidden="true"></span></a>
                                    </div>
                                    <div class="col-md-6  fea-left">
                                        <div class="w3agile_special_deals_grid_left_grid">
                                            <a href="blogDetail.jsp"><img src="${blog.coverImage}" class="img-responsive"
                                                                          alt=""/></a>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </c:otherwise>
                        </c:choose>
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
    </div>
    <div class="clearfix"></div>
</div>
</div>
<!-- footer -->
<jsp:include page="common/footer.jsp"></jsp:include>
<!-- footer -->
<jsp:include page="common/resource_js.jsp"></jsp:include>
</body>
</html>