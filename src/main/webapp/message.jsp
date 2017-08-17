<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>佐伊的木匣子</title>
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" /><!-- fontawesome -->     
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" /><!-- Bootstrap stylesheet -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
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
					<li><a href="index.index.jsp">首页</a></li>
					  <li><a href="study.study.ｊｓｐ">学习笔记</a></li>
					<li><a href="program.program.jsp">项目经验</a></li>
					<!--<li class="dropdown">
					  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">技术探讨<span class="caret"></span></a>
					  <ul class="dropdown-menu">
					  <li><a href="icons.html">Icons Page</a></li>
						<li><a href="typo.html">Typography</a></li>
					  </ul>
					</li>-->
					<li><a href="mood.mood.jsp">杂文随笔</a></li>
					<li><a href="world.world.jsp">看世界</a></li>
					<li><a class="active" href="message.message.jsp">留言墙</a></li>
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
					<input type="submit" value="Submit Comment" >
				</div>
			</form>
		</div>
		<div class="comments">
			<h3>留言列表</h3>
			<div class="comments-grids">
				<div class="comments-grid">
					<div class="comments-grid-left">
						<img src="images/3.png" alt=" " class="img-responsive" />
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
					<div class="clearfix"> </div>
				</div>
				<div class="comments-grid">
					<div class="comments-grid-left">
						<img src="images/2.png" alt=" " class="img-responsive" />
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
					<div class="clearfix"> </div>
				</div>
				<div class="comments-grid">
					<div class="comments-grid-left">
						<img src="images/1.png" alt=" " class="img-responsive" />
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
					<div class="clearfix"> </div>
				</div>
				<div class="comments-grid">
					<div class="comments-grid-left">
						<img src="images/4.png" alt=" " class="img-responsive" />
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
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
			<!-- //btm-wthree-left -->
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- footer -->
	<div class="footer-agile-info">
		<div class="container">
			<div class="col-md-4 w3layouts-footer">
				<h3>Contact Information</h3>
					<p><span><i class="fa fa-map-marker" aria-hidden="true"></i></span>22 Russell Street, Victoria ,Melbourne AUSTRALIA </p>
					<p><span><i class="fa fa-envelope" aria-hidden="true"></i></span><a href="#">E: info [at] domain.com</a> </p>
					<p><span><i class="fa fa-mobile" aria-hidden="true"></i></span>P: +254 2564584 / +542 8245658 </p>
					<p><span><i class="fa fa-globe" aria-hidden="true"></i></span><a href="#">W: www.w3layouts.com</a></p>
			</div>
			<div class="col-md-4 wthree-footer">
				<h2>Fashion Blog</h2>
				<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt ut labore et dolore magna aliqua uta enim ad minim ven iam quis nostrud exercitation ullamco labor nisi ut aliquip exea commodo consequat duis aute .</p>
			</div>
			<div class="col-md-4 w3-agile">
				<h3>Newsletter</h3>
				<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
				<form action="#" method="post">
					<input type="email" name="Email" placeholder="Email" required="">
					<input type="submit" value="Send">
				</form>
			</div>
		</div>
	</div>
	<!-- footer -->
	<!-- copyright -->
	<div class="copyright">
		<div class="container">
			<div class="w3agile-list">
				<ul>
					<li><a href="index.index.jsp">Home</a></li>
					<li><a href="about.about.jsp">About</a></li>
					<li><a href="lifestyle.html">Life Style</a></li>
					<li><a href="photography.html">Photography</a></li>
					<li><a href="study.study.ｊｓｐ">Fashion</a></li>
					<li><a href="icons.html">Codes</a></li>
					<li><a href="features.html">Features</a></li>
					<li><a href="contact.html">Contact</a></li>
				</ul>
			</div>
			<div class="agileinfo">
				<p>© 2017 Fashion Blog . All Rights Reserved . Design by <a href="http://w3layouts.com/">W3layouts</a></p>
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