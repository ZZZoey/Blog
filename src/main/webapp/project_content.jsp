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
        <!-- //项目导航 -->
        <div class="agileits_heading_section">
            <h3 class="wthree_head">${projectTitle}</h3>
            <p class="agileinfo_para">${projectSummary}</p>
        </div>
        <div class="col-md-12" style="margin-bottom: 3em">
            <div class="w3_testimonials_grids">
                <c:forEach var="blog" items="${blogList}">
                    <div class="col-md-6 w3_agile_classes_grid">
                        <div class="agile_classes_grid1">
                            <div class="col-xs-4 agile_classes_grid1_right">
                                <div class="agileits_w3layouts_classes_grid1_right">
                                   <i class="fa fa-gift" aria-hidden="true"></i>
                                </div>
                            </div>
                            <div class="col-xs-8 agile_classes_grid1_left">
                                <a href="blogDetail.html?blogId=${blog.blogId}"><h4>${blog.title}</h4></a>
                                <p>${blog.summary}</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </c:forEach>
                <nav class="events agileits">
                    ${pageNation}
                </nav>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- //btm-wthree-left -->
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