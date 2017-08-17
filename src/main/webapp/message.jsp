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
            <p class="agileinfo_para">写下你想说的话吧</p>
        </div>
        <form action="#" method="post">
            <input type="text" name="Name" placeholder="Name" required="">
            <input type="email" name="Email" placeholder="Email" required="">
            <textarea name="Message" placeholder="Your comment here..." required=""></textarea>
            <div class="w3_single_submit">
                <input type="submit" value="Submit Comment">
            </div>
        </form>
    </div>
    <div class="comments">
        <h3>留言列表</h3>
        <div class="comments-grids">
            <div class="comments-grid">
                <div class="comments-grid-left">
                    <img src="images/3.png" alt=" " class="img-responsive"/>
                </div>
                <div class="comments-grid-right">
                    <h4><a href="#">Michael Crisp</a></h4>
                    <ul>
                        <li>5 December 2016 <i>|</i></li>
                        <li><a href="#">Reply</a></li>
                    </ul>
                    <p>Ut ex metus, ornare ac ultricies sit amet, auctor a elit. Praesent sit
                        amet scelerisque massa. Duis porta risus id urna finibus aliquet.</p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="comments-grid">
                <div class="comments-grid-left">
                    <img src="images/2.png" alt=" " class="img-responsive"/>
                </div>
                <div class="comments-grid-right">
                    <h4><a href="#">Adam Lii</a></h4>
                    <ul>
                        <li>8 December 2016 <i>|</i></li>
                        <li><a href="#">Reply</a></li>
                    </ul>
                    <p>Ut ex metus, ornare ac ultricies sit amet, auctor a elit. Praesent sit
                        amet scelerisque massa. Duis porta risus id urna finibus aliquet.</p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="comments-grid">
                <div class="comments-grid-left">
                    <img src="images/1.png" alt=" " class="img-responsive"/>
                </div>
                <div class="comments-grid-right">
                    <h4><a href="#">Richard Carl</a></h4>
                    <ul>
                        <li>11 December 2016 <i>|</i></li>
                        <li><a href="#">Reply</a></li>
                    </ul>
                    <p>Ut ex metus, ornare ac ultricies sit amet, auctor a elit. Praesent sit
                        amet scelerisque massa. Duis porta risus id urna finibus aliquet.</p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="comments-grid">
                <div class="comments-grid-left">
                    <img src="images/4.png" alt=" " class="img-responsive"/>
                </div>
                <div class="comments-grid-right">
                    <h4><a href="#">Thomas Paul</a></h4>
                    <ul>
                        <li>14 December 2016 <i>|</i></li>
                        <li><a href="#">Reply</a></li>
                    </ul>
                    <p>Ut ex metus, ornare ac ultricies sit amet, auctor a elit. Praesent sit
                        amet scelerisque massa. Duis porta risus id urna finibus aliquet.</p>
                </div>
                <div class="clearfix"></div>
            </div>
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