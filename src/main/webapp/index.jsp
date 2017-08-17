<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>佐伊的木匣子</title>
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" /><!-- fontawesome -->     
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" /><!-- Bootstrap stylesheet -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/mystyle.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
<!-- stylesheet -->
<!-- meta tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Blog Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //meta tags -->

<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script src="js/main.js"></script>
<!-- Required-js -->
<!-- main slider-banner -->
<script src="js/skdslider.min.js"></script>
<link href="css/skdslider.css" rel="stylesheet">
<script type="text/javascript">
		jQuery(document).ready(function(){
			jQuery('#demo1').skdslider({'delay':5000, 'animationSpeed': 2000,'showNextPrev':true,'showPlayButton':true,'autoSlide':true,'animationType':'fading'});
						
			jQuery('#responsive').change(function(){
			  $('#responsive_wrapper').width(jQuery(this).val());
			});
			
		});
</script>	
<!-- //main slider-banner --> 
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->

<!-- scriptfor smooth drop down-nav -->
<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
</script>
<!-- //script for smooth drop down-nav -->
</head>
<body>
<!-- header -->
	<header>
		<div class="w3layouts-top-strip">
			<div class="container">
				<div class="logo">
					<h1><a href="index.index.jsp">佐伊的木匣子</a></h1>
					<p>Stay hungry，stay foolish</p>
				</div>
			</div>
		</div>
		<!-- navigation -->
			<nav class="navbar navbar-default">
			  <div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				  <ul class="nav navbar-nav">
					<li><a class="active" href="index.index.jsp">首页</a></li>
					<li><a href="study.study.ｊｓｐ">学习笔记</a></li>
					<li><a href="program.program.jsp">项目经验</a></li>
					<li><a href="mood.mood.jsp">杂文随笔</a></li>
					<li><a href="world.world.jsp">看世界</a></li>
					<li><a href="message.message.jsp">留言墙</a></li>
					<li><a href="about.about.jsp">About Me</a></li>
				  </ul>
				</div><!-- /.navbar-collapse -->
				<div class="w3_agile_login">
							<div class="cd-main-header">
								<a class="cd-search-trigger" href="#cd-search"> <span></span></a>
								<!-- cd-header-buttons -->
							</div>
							<div id="cd-search" class="cd-search">
								<form action="#" method="post">
									<input name="Search" type="search" placeholder="Search...">
								</form>
							</div>
						</div>
						<div class="clearfix"> </div>

			  </div><!-- /.container-fluid -->
			</nav>
			
		<!-- //navigation -->
	</header>
	<!-- //header -->
	<div class="container">
		<div class="banner-btm-agile">
		<!-- //最新博文 -->
			<div class="col-md-9 btm-wthree-left">
				<div class="wthree-top">
					<div class="w3agile-top">
						<div class="w3agile_special_deals_grid_left_grid">
							<a href="singlepage.singlepage.jsp"><img src="images/4.jpg" class="img-responsive" alt="" /></a>
						</div>
						<div class="w3agile-middle">
						<ul>
							<li><a href="#"><i class="fa fa-calendar" aria-hidden="true"></i>FEB 15,2017</a></li>
							<li><a href="#"><i class="fa fa-thumbs-up" aria-hidden="true"></i>201 LIKES</a></li>
							<li><a href="#"><i class="fa fa-comment" aria-hidden="true"></i>15 COMMENTS</a></li>
						</ul>
					</div>
					</div>
					
					<div class="w3agile-bottom">
						<div class="col-md-12 w3agile-right">
							<h3><a href="singlepage.singlepage.jsp">Amet consectetur adipisicing </a></h3>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt ut labore et dolore magna aliqua uta enim ad minim ven iam quis nostrud exercitation ullamco labor nisi ut aliquip exea commodo consequat duis aute irudre dolor in elit sed uta labore dolore reprehender</p>
							<a class="agileits w3layouts" href="singlepage.singlepage.jsp">Read More <span class="glyphicon agileits w3layouts glyphicon-arrow-right" aria-hidden="true"></span></a>
						</div>
							<div class="clearfix"></div>
					</div>
				</div>
				<!-- wthree-top-1 -->
				<div class="wthree-top-1">
					<div class="w3agile-top">
						<section class="slider">
					<div class="flexslider">
						<ul class="slides">
							<li>
								<div class="w3agile_special_deals_grid_left_grid">
									<a href="singlepage.singlepage.jsp"><img src="images/2.jpg" class="img-responsive" alt="" /></a>
								</div>
							</li>
							<li>
								<div class="w3agile_special_deals_grid_left_grid">
									<a href="singlepage.singlepage.jsp"><img src="images/3.jpg" class="img-responsive" alt="" /></a>
								</div>
							</li>
							<li>
								<div class="w3agile_special_deals_grid_left_grid">
									<a href="singlepage.singlepage.jsp"><img src="images/3.jpg" class="img-responsive" alt="" /></a>
								</div>
							</li>
						</ul>
					</div>
				</section>
			<!-- flexSlider -->
				<script defer src="js/jquery.flexslider.js"></script>
				<script type="text/javascript">
					$(window).load(function(){
					  $('.flexslider').flexslider({
						animation: "slide",
						start: function(slider){
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
							<h3><a href="singlepage.singlepage.jsp">Amet consectetur adipisicing </a></h3>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt ut labore et dolore magna aliqua uta enim ad minim ven iam quis nostrud exercitation ullamco labor nisi ut aliquip exea commodo consequat duis aute irudre dolor in elit sed uta labore dolore reprehender</p>
							<a class="agileits w3layouts" href="singlepage.singlepage.jsp">Read More <span class="glyphicon agileits w3layouts glyphicon-arrow-right" aria-hidden="true"></span></a>
						</div>
							<div class="clearfix"></div>
					</div>
				</div>
				<!-- //wthree-top-1 -->
				<!-- wthree-top-1 -->
				<div class="wthree-top">
					<div class="w3agile-top">
						<div class="w3agile_special_deals_grid_left_grid">
							<a href="singlepage.singlepage.jsp"><img src="images/4.jpg" class="img-responsive" alt="" /></a>
						</div>
						<div class="w3agile-middle">
							<ul>
								<li><a href="#"><i class="fa fa-calendar" aria-hidden="true"></i>FEB 15,2017</a></li>
								<li><a href="#"><i class="fa fa-thumbs-up" aria-hidden="true"></i>201 LIKES</a></li>
								<li><a href="#"><i class="fa fa-comment" aria-hidden="true"></i>15 COMMENTS</a></li>
							</ul>
						</div>
					</div>

					<div class="w3agile-bottom">
						<div class="col-md-12 w3agile-right">
							<h3><a href="singlepage.singlepage.jsp">Amet consectetur adipisicing </a></h3>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt ut labore et dolore magna aliqua uta enim ad minim ven iam quis nostrud exercitation ullamco labor nisi ut aliquip exea commodo consequat duis aute irudre dolor in elit sed uta labore dolore reprehender</p>
							<a class="agileits w3layouts" href="singlepage.singlepage.jsp">Read More <span class="glyphicon agileits w3layouts glyphicon-arrow-right" aria-hidden="true"></span></a>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<!-- //wthree-top-1 -->
				<div class="wthree-top-1">
					<div class="w3agile-top">
						<section class="slider">
							<div class="flexslider">
								<ul class="slides">
									<li>
										<div class="w3agile_special_deals_grid_left_grid">
											<a href="singlepage.singlepage.jsp"><img src="images/2.jpg" class="img-responsive" alt="" /></a>
										</div>
									</li>
									<li>
										<div class="w3agile_special_deals_grid_left_grid">
											<a href="singlepage.singlepage.jsp"><img src="images/3.jpg" class="img-responsive" alt="" /></a>
										</div>
									</li>
									<li>
										<div class="w3agile_special_deals_grid_left_grid">
											<a href="singlepage.singlepage.jsp"><img src="images/3.jpg" class="img-responsive" alt="" /></a>
										</div>
									</li>
								</ul>
							</div>
						</section>
						<!-- flexSlider -->
						<script defer src="js/jquery.flexslider.js"></script>
						<script type="text/javascript">
                            $(window).load(function(){
                                $('.flexslider').flexslider({
                                    animation: "slide",
                                    start: function(slider){
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
							<h3><a href="singlepage.singlepage.jsp">Amet consectetur adipisicing </a></h3>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt ut labore et dolore magna aliqua uta enim ad minim ven iam quis nostrud exercitation ullamco labor nisi ut aliquip exea commodo consequat duis aute irudre dolor in elit sed uta labore dolore reprehender</p>
							<a class="agileits w3layouts" href="singlepage.singlepage.jsp">Read More <span class="glyphicon agileits w3layouts glyphicon-arrow-right" aria-hidden="true"></span></a>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<!-- wthree-top-1 -->
			</div>
			<!-- //btm-wthree-left -->
				<!-- btm-wthree-right -->
			<div class="col-md-3 w3agile_blog_left">
				<div class="wthreesearch">
							<form action="#" method="post">
								<input type="search" name="Search" placeholder="Search here" required="">
								<button type="submit" class="btn btn-default search" aria-label="Left Align">
									<i class="fa fa-search" aria-hidden="true"></i>
								</button>
							</form>
						
				</div>
				
				<div class="agileinfo_calender">
				<h3>微信公众号</h3>
				<div class="w3ls-social-icons-1">
					<!--<a class="facebook" href="#"><i class="fa fa-facebook"></i></a>
					<a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
					<a class="pinterest" href="#"><i class="fa fa-pinterest-p"></i></a>
					<a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a>
					<a class="linkedin" href="#"><i class="fa fa-google-plus"></i></a>
					<a class="linkedin" href="#"><i class="fa fa-rss"></i></a>
					<a class="linkedin" href="#"><i class="fa fa-behance"></i></a>-->
					<img src="images/QRcode.jpg" class="img-responsive"/>
					<h5><i class="fa fa-comments" aria-hidden="true"></i>扫码关注个人公众号，得到及时的文章推送信息。</h5>
				</div>
				</div>
				<div class="w3ls_popular_posts">
					<h3>推荐博文</h3>
					<div class="agileits_popular_posts_grid">
						<div class="w3agile_special_deals_grid_left_grid">
							<a href="singlepage.singlepage.jsp"><img src="images/p1.jpg" class="img-responsive" alt="" /></a>
						</div>
						<h4><a href="singlepage.singlepage.jsp">Tellus Faucibus Eleifend Sit Amet</a></h4>
						<h5><i class="fa fa-calendar" aria-hidden="true"></i>FEB 15,2017</h5>
					</div>
					<div class="agileits_popular_posts_grid">
						<div class="w3agile_special_deals_grid_left_grid">
								<a href="singlepage.singlepage.jsp"><img src="images/p2.jpg" class="img-responsive" alt="" /></a>
							</div>
						<h4><a href="singlepage.singlepage.jsp">Mauris Ut Odio Sed Nisi Convallis</a></h4>
						<h5><i class="fa fa-calendar" aria-hidden="true"></i>FEB 15,2017</h5>
					</div>
					<div class="agileits_popular_posts_grid">
						<div class="w3agile_special_deals_grid_left_grid">
								<a href="singlepage.singlepage.jsp"><img src="images/p3.jpg" class="img-responsive" alt="" /></a>
						</div>
						<h4><a href="singlepage.singlepage.jsp">Curabitur A Sapien Et Tellus Faucibus</a></h4>
						<h5><i class="fa fa-calendar" aria-hidden="true"></i>FEB 15,2017</h5>
					</div>
				</div>

			<div class="w3ls_recent_posts">
					<h3>点击排行</h3>
					<div class="agileits_recent_posts_grid">
						<div class="agileits_recent_posts_gridl">
							<div class="w3agile_special_deals_grid_left_grid">
									<a href="singlepage.singlepage.jsp"><img src="images/r1.jpg" class="img-responsive" alt="" /></a>
								</div>
						</div>
						<div class="agileits_recent_posts_gridr">
							<h4><a href="singlepage.singlepage.jsp">velit esse quam nihil</a></h4>
							<h5><i class="fa fa-calendar" aria-hidden="true"></i>FEB 15,2017</h5>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="agileits_recent_posts_grid">
						<div class="agileits_recent_posts_gridl">
							<div class="w3agile_special_deals_grid_left_grid">
									<a href="singlepage.singlepage.jsp"><img src="images/r2.jpg" class="img-responsive" alt="" /></a>
								</div>
						</div>
						<div class="agileits_recent_posts_gridr">
							<h4><a href="singlepage.singlepage.jsp">Class aptent taciti </a></h4>
							<h5><i class="fa fa-calendar" aria-hidden="true"></i>FEB 15,2017</h5>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="agileits_recent_posts_grid">
						<div class="agileits_recent_posts_gridl">
							<div class="w3agile_special_deals_grid_left_grid">
									<a href="singlepage.singlepage.jsp"><img src="images/r3.jpg" class="img-responsive" alt="" /></a>
								</div>
						</div>
						<div class="agileits_recent_posts_gridr">
							<h4><a href="singlepage.singlepage.jsp">Maecenas eget erat </a></h4>
							<h5><i class="fa fa-calendar" aria-hidden="true"></i>FEB 15,2017</h5>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>


				<div class="w3l_categories">
					<h3>日期归档</h3>
					<ul>
						<li><a href="singlepage.singlepage.jsp"><span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span>tellus faucibus eleifend sit amet</a></li>
						<li><a href="singlepage.singlepage.jsp"><span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span>Mauris ut odio sed nisi convallis</a></li>
						<li><a href="singlepage.singlepage.jsp"><span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span>Curabitur a sapien et tellus faucibus</a></li>
						<li><a href="singlepage.singlepage.jsp"><span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span>porta nunc eget, lobortis nulla</a></li>
						<li><a href="singlepage.singlepage.jsp"><span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span>Sed ut metus turpis cursus convallis</a></li>
						<li><a href="singlepage.singlepage.jsp"><span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span>Maecenas cursus at ex a faucibus</a></li>
					</ul>
				</div>

			<div class="w3l_tags">
					<h3>标签云</h3>
					<ul class="tag">
						<li><a href="singlepage.singlepage.jsp">Fashion</a></li>
						<li><a href="singlepage.singlepage.jsp">Photography</a></li>
						<li><a href="singlepage.singlepage.jsp">Artist</a></li>
						<li><a href="singlepage.singlepage.jsp">Music</a></li>
						<li><a href="singlepage.singlepage.jsp">Shop</a></li>
						<li><a href="singlepage.singlepage.jsp">Corporate</a></li>
						<li><a href="singlepage.singlepage.jsp">Personal</a></li>
						<li><a href="singlepage.singlepage.jsp">Restaurant</a></li>
						<li><a href="singlepage.singlepage.jsp">Business</a></li>
					</ul>
				</div>
				<div class="w3ls_recent_posts">
					<h3>友情链接</h3>
					<ul class="tag">
						<li><a href="singlepage.singlepage.jsp">Fashion</a></li>
						<li><a href="singlepage.singlepage.jsp">Photography</a></li>
						<li><a href="singlepage.singlepage.jsp">Artist</a></li>
						<li><a href="singlepage.singlepage.jsp">Music</a></li>
						<li><a href="singlepage.singlepage.jsp">Shop</a></li>
						<li><a href="singlepage.singlepage.jsp">Corporate</a></li>
						<li><a href="singlepage.singlepage.jsp">Personal</a></li>
						<li><a href="singlepage.singlepage.jsp">Restaurant</a></li>
						<li><a href="singlepage.singlepage.jsp">Business</a></li>
					</ul>
				</div>
			</div>
		</div>
			<!-- //btm-wthree-right -->
			<div class="clearfix"></div>
		</div>
	<!-- footer -->
	<div class="footer-agile-info">
		<div class="container">
			<div class="col-md-4 w3layouts-footer">
				<h2 class="footer-title">博主名片</h2>
					<p><span><i class="fa fa-map-marker" aria-hidden="true"></i></span>广东省</p>
					<p><span><i class="fa fa-envelope" aria-hidden="true"></i></span><a href="#">E: info [at] domain.com</a> </p>
					<p><span><i class="fa fa-mobile" aria-hidden="true"></i></span>P: +254 2564584 / +542 8245658 </p>
					<p><span><i class="fa fa-globe" aria-hidden="true"></i></span><a href="#">W: www.w3layouts.com</a></p>
			</div>
			<div class="col-md-4 wthree-footer">
				<h2 class="footer-title">程序统计</h2>
				<p>
					<span><i class="fa fa-edit" aria-hidden="true"></i></span>文章：1篇
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<span><i class="fa fa-tags" aria-hidden="true"></i></span>标签：1个
				</p>
				<p>
					<span><i class="fa fa-comments-o" aria-hidden="true"></i></span>评论：1条
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<span><i class="fa fa-smile-o" aria-hidden="true"></i></span>留言：1条
				</p>
				<p>
					<span><i class="fa fa-external-link" aria-hidden="true"></i></span>友链：1个
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<span><i class="fa fa-eye" aria-hidden="true"></i></span>访问：1次
				</p>
				<p>
					<!--<span><i class="fa fa-star" aria-hidden="true"></i></span>文章：1篇
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-->
					<span><i class="fa fa-spinner" aria-hidden="true"></i></span>总运行：1天
				</p>
			</div>
			<div class="col-md-4 w3-agile">
				<h2 class="footer-title">关于本站</h2>
				<div class="footer-block">
					<div class="kuang">
						<div class="block-bar">
							<div class="box"><span>2017-8-16</span>博客上线啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦</div>
						</div>
						<div class="block-bar">
							<div class="box"><span style="color: #e29933">2017-8-16</span>博客上线啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦</div>
						</div>
						<div class="block-bar">
							<div class="box"><span style="color: #e29933">2017-8-16</span>博客上线啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦</div>
						</div>
						<div class="block-bar">
							<div class="box"><span style="color: #e29933">2017-8-16</span>博客上线啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦</div>
						</div>
						<div class="block-bar">
							<div class="box"><span style="color: #e29933">2017-8-16</span>博客上线啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦</div>
						</div>
						<div class="block-bar">
							<div class="box"><span style="color: #e29933">2017-8-16</span>博客上线啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦</div>
						</div>
						<div class="block-bar">
							<div class="box"><span style="color: #e29933">2017-8-16</span>博客上线啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦</div>
						</div>
						<div class="block-bar">
							<div class="box"><span style="color: #e29933">2017-8-16</span>博客上线啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- footer -->
	<!-- copyright -->
	<div class="copyright">
		<div class="container">
			<div class="agileinfo">
				<p>© 2017 Zoey . All Rights Reserved . </p>
			</div>
		</div>
	</div>
<!-- //copyright -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/bootstrap.js"></script>
</body>
</html>