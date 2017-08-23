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
    <!-- //留言板 -->
    <div class="leave-coment-form">
        <div class="agileits_heading_section">
            <h3 class="wthree_head">Leave Your Message</h3>
            <p class="agileinfo_para"><h5>写下你想说的话吧</h5></p>
        </div>
        <form action="addComment.do?blogId=0" method="post">
            <input type="text" name="visitorName" placeholder="Name" required="">
            <input type="email" name="email" placeholder="Email">
            <textarea name="content" placeholder="Your comment here..." required=""></textarea>
            <div class="w3_single_submit">
                <input type="submit" value="Submit Comment">
            </div>
        </form>
    </div>
    <div class="comments">
        <h3>留言列表</h3>
        <div class="comments-grids">
            <c:forEach var="comment" items="${commentList}">
                <div class="comments-grid">
                    <div class="comments-grid-left">
                        <img src="images/3.png" alt=" " class="img-responsive"/>
                    </div>
                    <div class="comments-grid-right">
                        <h4><a href="#">${comment.visitorName}</a></h4>
                        <ul>
                            <li>${comment.createTime}<i>|</i></li>
                            <li><a href="#">Reply</a></li>
                        </ul>
                        <p>${comment.content}</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </c:forEach>
            <nav class="events agileits">
                ${pageNation}
            </nav>
        </div>
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