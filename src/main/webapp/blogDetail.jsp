<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
            <div class="single-left">
                <div class="single-left1">
                    <img src="${blog.coverImage}" alt=" " class="img-responsive"/>
                    <h3>${blog.title}</h3>
                    <ul>
                        <li><span class="glyphicon glyphicon-user" aria-hidden="true"></span><a href="#">${blog.author}</a></li>
                        <li><span class="glyphicon glyphicon-tag" aria-hidden="true"></span><a href="#">${blog.tagList.size()} Tags</a></li>
                        <li><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span><a href="#">${blog.commentList.size()}
                            Comments</a></li>
                    </ul>
                    <p>${blog.content}</p>
                </div>

                <div class="comments">
                    <div class="leave-coment-form">
                        <h3>评论</h3>
                        <form action="addComment.do?blogId=${blog.blogId}" method="post">
                            <input type="text" name="visitorName" placeholder="Name" required="">
                            <input type="email" name="email" placeholder="Email">
                            <textarea name="content" placeholder="Your comment here..." required=""></textarea>
                            <div class="w3_single_submit">
                                <input type="submit" value="Submit Comment">
                            </div>
                        </form>
                    </div>
                    <hr style="border:3px dashed #ffac3a">
                    <div class="comments-grids">
                        <c:forEach var="comment" items="${blog.commentList}">
                            <div class="comments-grid">
                                <div class="comments-grid-left">
                                    <img src="images/3.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="comments-grid-right">
                                    <h4><a href="#">${comment.visitorName}</a></h4>
                                    <ul>
                                        <li><fmt:formatDate value="${comment.createTime}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate> <i>|</i></li>
                                        <li><a href="#">Reply</a></li>
                                    </ul>
                                    <p>${comment.content}</p>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
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