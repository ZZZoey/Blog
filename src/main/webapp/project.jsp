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
    <!-- //项目导航 -->
    <div class="col-md-12">
        <!-- featured-services -->
        <div class="fea-tp">
            <div class="w3ls_service_grids">
                <c:forEach var="project" items="${projectList}">
                    <div class="col-md-6 w3_agile_services_grid">
                        <div class="agile_services_grid">
                            <div class="hover06 column">
                                <div>
                                    <figure><a href="project_content.html?projectId=${project.projectId}"><img src="${project.coverImage}" alt=" "
                                                                                               class="img-responsive"/></a>
                                    </figure>
                                </div>
                            </div>
                            <div class="agile_services_grid_pos">
                                <i class="fa fa-line-chart" aria-hidden="true"></i>
                            </div>
                        </div>
                        <a href="project_content.html?projectId=${project.projectId}"><h4>${project.title}</h4></a>
                        <p>${project.summary}</p>
                    </div>
                </c:forEach>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- //featured-services -->
    </div>
    <!-- //btm-wthree-left -->
    <div class="clearfix"></div>
</div>
</div>
<!-- footer -->
<jsp:include page="common/footer.jsp"></jsp:include>
<!-- footer -->
<jsp:include page="common/resource_js.jsp"></jsp:include>
</body>
</html>