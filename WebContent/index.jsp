<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>首页</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Best Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="js/jquery.min.js"></script>
<!-- //js -->
<!-- cart -->
<script src="js/simpleCart.min.js"></script>
<!-- cart -->
<!-- for bootstrap working -->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- timer -->
<link rel="stylesheet" href="css/jquery.countdown.css" />
<!-- //timer -->
<!-- animation-effect -->
<link href="css/animate.min.css" rel="stylesheet">
<script src="js/wow.min.js"></script>
<script>
	new WOW().init();
</script>
<!-- //animation-effect -->
</head>

<body>
	<!-- header -->
	<div><jsp:include page="header.jsp" /></div>
	<!-- //header -->
	<!-- banner -->
	<div class="banner">
		<div class="container">
			<div class="banner-info animated wow zoomIn" data-wow-delay=".5s">
				<h3>Free Online Shopping</h3>
				<h4>
					最高 <span>50% <i>减免</i></span>
				</h4>
				<div class="wmuSlider example1">
					<div class="wmuSliderWrapper">
						<article style="position: absolute; width: 100%; opacity: 0;">
							<div class="banner-wrap">
								<div class="banner-info1">
									<p>T-Shirts + Formal Pants + Jewellery + Cosmetics</p>
								</div>
							</div>
						</article>
						<article style="position: absolute; width: 100%; opacity: 0;">
							<div class="banner-wrap">
								<div class="banner-info1">
									<p>Toys + Furniture + Lighting + Watches</p>
								</div>
							</div>
						</article>
						<article style="position: absolute; width: 100%; opacity: 0;">
							<div class="banner-wrap">
								<div class="banner-info1">
									<p>Tops + Books & Media + Sports</p>
								</div>
							</div>
						</article>
					</div>
				</div>
				<script src="js/jquery.wmuSlider.js"></script>
				<script>
					$('.example1').wmuSlider();
				</script>
			</div>
		</div>
	</div>
	<!-- //banner -->
	<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container">
			<div class="banner-bottom-grids">
				<div class="banner-bottom-grid-left animated wow slideInLeft" data-wow-delay=".5s">
					<div class="grid">
						<figure class="effect-julia">
							<img src="images/4.jpg" alt=" " class="img-responsive" />
							<figcaption>
								<h3>
									Best <span>Store</span><i> 给你最佳的体验</i>
								</h3>
								<div>
									<p>正品保证</p>
									<p>订单查询</p>
									<p>售后服务</p>
								</div>
							</figcaption>
						</figure>
					</div>
				</div>
				<div class="banner-bottom-grid-left1 animated wow slideInUp" data-wow-delay=".5s">
					<div class="banner-bottom-grid-left-grid left1-grid grid-left-grid1">
						<div class="banner-bottom-grid-left-grid1">
							<img src="images/1.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="banner-bottom-grid-left1-pos">
							<p>最新商品</p>
						</div>
					</div>
					<div class="banner-bottom-grid-left-grid left1-grid grid-left-grid1">
						<div class="banner-bottom-grid-left-grid1">
							<img src="images/2.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="banner-bottom-grid-left1-position">
							<div class="banner-bottom-grid-left1-pos1">
								<p>最热商品</p>
							</div>
						</div>
					</div>
				</div>
				<div class="banner-bottom-grid-right animated wow slideInRight" data-wow-delay=".5s">
					<div class="banner-bottom-grid-left-grid grid-left-grid1">
						<div class="banner-bottom-grid-left-grid1">
							<img src="images/3.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="grid-left-grid1-pos">
							<p>
								顶级经典设计 <span>2019收集</span>
							</p>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //banner-bottom -->
	<!-- collections -->
	<div class="new-collections">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">最新商品</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
			<div class="new-collections-grids">
				<div class="col-md-3 new-collections-grid">
					<c:forEach items="${newProductList0 }" var="product">

						<div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
							<div class="new-collections-grid1-image">
								<a href="single.jsp" class="product-image"> <img src="${product.pimage }" alt=" " class="img-responsive" />
								</a>
								<div class="new-collections-grid1-image-pos">
									<a href="single.jsp">Quick View</a>
								</div>
							</div>
							<h4>
								<a href="single.jsp">${product.pname }</a>
							</h4>
							<p>${product.pdesc}</p>
							<div class="new-collections-grid1-left simpleCart_shelfItem">
								<p>
									<i><fmt:setLocale value="en_US" /> <fmt:formatNumber value="${product.market_price}" type="currency" maxFractionDigits="0"></fmt:formatNumber> </i> <span class="item_price"> <fmt:setLocale
											value="en_US" /> <fmt:formatNumber value="${product.shop_price}" type="currency" maxFractionDigits="0"></fmt:formatNumber>
									</span><a class="item_add" href="#">add to cart </a>
								</p>
							</div>
						</div>

					</c:forEach>
				</div>
				<!-- <div class="col-md-3 new-collections-grid">
										
				</div>-->
				<div class="col-md-6 new-collections-grid">
					<c:forEach items="${hotProductList }" var="hotProduct">

						<div class="new-collections-grid1 new-collections-grid1-image-width animated wow slideInUp" data-wow-delay=".5s">
							<div class="new-collections-grid1-image">
								<a href="single.jsp" class="product-image"><img src="${hotProduct.pimage }" alt=" " class="img-responsive" /></a>
								<div class="new-collections-grid1-image-pos new-collections-grid1-image-pos1">
									<a href="single.jsp">Quick View</a>
								</div>
								<div class="new-one">
									<p>New</p>
								</div>
							</div>
							<h4>
								<a href="single.jsp">${hotProduct.pname }</a>
							</h4>
							<p>${hotProduct.pdesc }</p>
							<div class="new-collections-grid1-left simpleCart_shelfItem">
								<p>
									<i><fmt:setLocale value="en_US" />
										<fmt:formatNumber value="${hotProduct.market_price }" type="currency" maxFractionDigits="0"></fmt:formatNumber> </i> <span class="item_price"><fmt:setLocale value="en_US" />
										<fmt:formatNumber value="${hotProduct.shop_price }" type="currency" maxFractionDigits="0"></fmt:formatNumber></span><a class="item_add" href="#">add to cart </a>
								</p>
							</div>
						</div>

					</c:forEach>
					<div class="new-collections-grid-sub-grids">
						<c:forEach items="${newProductList2 }" var="product">

							<div class="new-collections-grid1-sub">
								<div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
									<div class="new-collections-grid1-image">
										<a href="single.jsp" class="product-image"> <img src="${product.pimage }" alt=" " class="img-responsive" />
										</a>
										<div class="new-collections-grid1-image-pos">
											<a href="single.jsp">Quick View</a>
										</div>
									</div>
									<h4>
										<a href="single.jsp">${product.pname }</a>
									</h4>
									<p>${product.pdesc}</p>
									<div class="new-collections-grid1-left simpleCart_shelfItem">
										<p>
											<i><fmt:setLocale value="en_US" /> <fmt:formatNumber value="${product.market_price}" type="currency" maxFractionDigits="0"></fmt:formatNumber></i> <span class="item_price"><fmt:setLocale
													value="en_US" /> <fmt:formatNumber value="${product.shop_price}" type="currency" maxFractionDigits="0"></fmt:formatNumber></span><a class="item_add" href="#">add to cart </a>
										</p>
									</div>
								</div>
							</div>

						</c:forEach>
						<!-- <div class="clearfix"></div> -->
					</div>
				</div>
				<!-- <div class="col-md-3 new-collections-grid">
					
				</div>
				
				<div class="clearfix"></div> -->
				<div class="col-md-3 new-collections-grid">
					<c:forEach items="${newProductList4 }" var="product">

						<div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
							<div class="new-collections-grid1-image">
								<a href="single.jsp" class="product-image"> <img src="${product.pimage }" alt=" " class="img-responsive" />
								</a>
								<div class="new-collections-grid1-image-pos">
									<a href="single.jsp">Quick View</a>
								</div>
							</div>
							<h4>
								<a href="single.jsp">${product.pname }</a>
							</h4>
							<p>${product.pdesc}</p>
							<div class="new-collections-grid1-left simpleCart_shelfItem">
								<p>
									<i><fmt:setLocale value="en_US" /> <fmt:formatNumber value="${product.market_price}" type="currency" maxFractionDigits="0"></fmt:formatNumber></i> <span class="item_price"><fmt:setLocale
											value="en_US" /> <fmt:formatNumber value="${product.shop_price}" type="currency" maxFractionDigits="0"></fmt:formatNumber></span><a class="item_add" href="#">add to cart </a>
								</p>
							</div>
						</div>

					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<!-- //collections -->
	<!-- new-timer -->
	<div class="timer">
		<div class="container">
			<div class="timer-grids">
				<div class="col-md-8 timer-grid-left animated wow slideInLeft" data-wow-delay=".5s">
					<h3>
						<a href="products.jsp">sunt in culpa qui officia deserunt mollit</a>
					</h3>
					<div class="rating">
						<div class="rating-left">
							<img src="images/2.png" alt=" " class="img-responsive" />
						</div>
						<div class="rating-left">
							<img src="images/2.png" alt=" " class="img-responsive" />
						</div>
						<div class="rating-left">
							<img src="images/2.png" alt=" " class="img-responsive" />
						</div>
						<div class="rating-left">
							<img src="images/2.png" alt=" " class="img-responsive" />
						</div>
						<div class="rating-left">
							<img src="images/1.png" alt=" " class="img-responsive" />
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="new-collections-grid1-left simpleCart_shelfItem timer-grid-left-price">
						<p>
							<i>$580</i> <span class="item_price">$550</span>
						</p>
						<h4>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea
							voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.</h4>
						<p>
							<a class="item_add timer_add" href="#">add to cart </a>
						</p>
					</div>
					<div id="counter"></div>
					<script src="js/jquery.countdown.js"></script>
					<script src="js/script.js"></script>
				</div>
				<div class="col-md-4 timer-grid-right animated wow slideInRight" data-wow-delay=".5s">
					<div class="timer-grid-right1">
						<img src="images/17.jpg" alt=" " class="img-responsive" />
						<div class="timer-grid-right-pos">
							<h4>特价优惠</h4>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //new-timer -->
	<!-- collections-bottom -->
	<div class="collections-bottom">
		<div class="container">
			<div class="collections-bottom-grids">
				<div class="collections-bottom-grid animated wow slideInLeft" data-wow-delay=".5s">
					<h3>
						45% 专享优惠 <span>女性 & 儿童</span>
					</h3>
				</div>
			</div>
			<div class="newsletter animated wow slideInUp" data-wow-delay=".5s">
				<h3>时讯简报</h3>
				<p>现在加入我们即可得到所有的最新消息和特别优惠。</p>
				<form>
					<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> <input type="email" value="输入你的电子邮箱地址" onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Enter your email address';}" required=""> <input type="submit" value="加入我们">
				</form>
			</div>
		</div>
	</div>
	<!-- //collections-bottom -->
	<!-- footer -->
	<div><jsp:include page="footer.jsp" /></div>
	<!-- //footer -->
</body>
</html>