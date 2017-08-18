<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
        <!-- //最新博文 -->

        <div class="col-md-9 btm-wthree-left">
            <c:forEach var="blog" items="${blogList}">
            <div class="wthree-top">
                <div class="w3agile-top">
                    <div class="w3agile_special_deals_grid_left_grid">
                        <a href="singlepage.jsp"><img src="${blog.coverImage}" class="img-responsive" alt=""/></a>
                    </div>
                    <div class="w3agile-middle">
                        <ul>
                            <li><a href="#"><i class="fa fa-calendar" aria-hidden="true"></i><fmt:formatDate value="${blog.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></a></li>
                            <li><a href="#"><i class="fa fa-thumbs-up" aria-hidden="true"></i>${blog.favor} LIKES</a></li>
                            <li><a href="#"><i class="fa fa-comment" aria-hidden="true"></i>${blog.commentNum} COMMENTS</a></li>
                        </ul>
                    </div>
                </div>

                <div class="w3agile-bottom">
                    <div class="col-md-12 w3agile-right">
                        <h3><a href="singlepage.jsp">${blog.title}</a></h3>
                        <p>${blog.summary}</p>
                        <a class="agileits w3layouts" href="singlepage.jsp">Read More <span
                                class="glyphicon agileits w3layouts glyphicon-arrow-right"
                                aria-hidden="true"></span></a>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            </c:forEach>
            <!-- wthree-top-1 -->
           <%-- <div class="wthree-top-1">
                <div class="w3agile-top">
                    <section class="slider">
                        <div class="flexslider">
                            <ul class="slides">
                                <li>
                                    <div class="w3agile_special_deals_grid_left_grid">
                                        <a href="singlepage.jsp"><img src="images/2.jpg"
                                                                                 class="img-responsive" alt=""/></a>
                                    </div>
                                </li>
                                <li>
                                    <div class="w3agile_special_deals_grid_left_grid">
                                        <a href="singlepage.jsp"><img src="images/3.jpg"
                                                                                 class="img-responsive" alt=""/></a>
                                    </div>
                                </li>
                                <li>
                                    <div class="w3agile_special_deals_grid_left_grid">
                                        <a href="singlepage.jsp"><img src="images/3.jpg"
                                                                                 class="img-responsive" alt=""/></a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </section>
                    <!-- flexSlider -->
                    <script defer src="js/jquery.flexslider.js"></script>
                    <script type="text/javascript">
                        $(window).load(function () {
                            $('.flexslider').flexslider({
                                animation: "slide",
                                start: function (slider) {
                                    $('body').removeClass('loading');
                                }
                            });
                        });
                    </script>
                    <!-- //flexSlider -->

                    <div class="w3agile-middle">
                        <ul>
                            <li><a href="#"><i class="fa fa-calendar" aria-hidden="true"></i>FEB 15,2017</a></li>
                            <li><a href="#"><i class="fa fa-thumbs-up" aria-hidden="true"></i>201 LIKES</a></li>
                            <li><a href="#"><i class="fa fa-comment" aria-hidden="true"></i>15 COMMENTS</a></li>

                        </ul>
                    </div>
                </div>

                <div class="w3agile-bottom">
                    <div class="col-md-9 w3agile-right">
                        <h3><a href="singlepage.jsp">Amet consectetur adipisicing </a></h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt
                            ut labore et dolore magna aliqua uta enim ad minim ven iam quis nostrud exercitation ullamco
                            labor nisi ut aliquip exea commodo consequat duis aute irudre dolor in elit sed uta labore
                            dolore reprehender</p>
                        <a class="agileits w3layouts" href="singlepage.jsp">Read More <span
                                class="glyphicon agileits w3layouts glyphicon-arrow-right"
                                aria-hidden="true"></span></a>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>--%>
            <!-- wthree-top-1 -->
        </div>
        <!-- //btm-wthree-left -->
        <!-- btm-wthree-right -->
        <jsp:include page="common/right.jsp"></jsp:include>
        <!-- //btm-wthree-right -->
    </div>
    <div class="clearfix"></div>
</div>
<!-- footer -->
<jsp:include page="common/footer.jsp"></jsp:include>
<!-- footer -->

<jsp:include page="common/resource_js.jsp"></jsp:include>
</body>
</html>