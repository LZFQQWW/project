<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>家具</title>
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
<script src="js/simpleCart.min.js">
	
</script>
<!-- cart -->
<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
<!-- for bootstrap working -->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
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
	<!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>首页</a></li>
				<li class="active">家具</li>
			</ol>
		</div>
	</div>
	<div class="products">
		<div class="container">
			<div class="col-md-4 products-left">
				<div class="filter-price animated wow slideInUp" data-wow-delay=".5s">
					<h3>Filter By Price</h3>
					<ul class="dropdown-menu1">
						<li><a href="">
								<div id="slider-range"></div> <input type="text" id="amount" style="border: 0" />
						</a></li>
					</ul>
					<script type='text/javascript'>
						//<![CDATA[ 
						$(window)
								.load(
										function() {
											$("#slider-range")
													.slider(
															{
																range : true,
																min : 0,
																max : 100000,
																values : [
																		10000,
																		60000 ],
																slide : function(
																		event,
																		ui) {
																	$("#amount")
																			.val(
																					"$"
																							+ ui.values[0]
																							+ " - $"
																							+ ui.values[1]);
																}
															});
											$("#amount")
													.val(
															"$"
																	+ $(
																			"#slider-range")
																			.slider(
																					"values",
																					0)
																	+ " - $"
																	+ $(
																			"#slider-range")
																			.slider(
																					"values",
																					1));

										});//]]>
					</script>
					<script type="text/javascript" src="js/jquery-ui.min.js"></script>
					<!---->
				</div>
				<div class="categories animated wow slideInUp" data-wow-delay=".5s">
					<h3>Categories</h3>
					<ul class="cate">
						<li><a href="#">Best Selling</a> <span>(15)</span></li>
						<li><a href="#">Home Collections</a> <span>(16)</span></li>
						<ul>
							<li><a href="#">Cookware</a> <span>(2)</span></li>
							<li><a href="#">Sofas</a> <span>(5)</span></li>
							<li><a href="#">Dining Tables</a> <span>(1)</span></li>
							<li><a href="#">New Arrivals</a> <span>(0)</span></li>
							<li><a href="#">Home Decore</a> <span>(1)</span></li>
						</ul>
						<li><a href="#">Sales</a> <span>(15)</span></li>
						<li><a href="#">Decorations</a> <span>(15)</span></li>
						<ul>
							<li><a href="#">Wall Clock</a> <span>(2)</span></li>
							<li><a href="#">New Arrivals</a> <span>(0)</span></li>
							<li><a href="#">Lighting</a> <span>(1)</span></li>
							<li><a href="#">Top Brands</a> <span>(0)</span></li>
						</ul>
					</ul>
				</div>
				<!-- 新产品 -->
				<div class="new-products animated wow slideInUp" data-wow-delay=".5s">
					<h3>New Products</h3>
					<div class="new-products-grids">
						<div class="new-products-grid">
							<div class="new-products-grid-left">
								<a href="single.jsp"><img src="images/6.jpg" alt=" " class="img-responsive" /></a>
							</div>
							<div class="new-products-grid-right">
								<h4>
									<a href="single.jsp">occaecat cupidatat</a>
								</h4>
								<div class="rating">
									<div class="rating-left">
										<img src="images/2.png" alt=" " class="img-responsive">
									</div>
									<div class="rating-left">
										<img src="images/2.png" alt=" " class="img-responsive">
									</div>
									<div class="rating-left">
										<img src="images/2.png" alt=" " class="img-responsive">
									</div>
									<div class="rating-left">
										<img src="images/1.png" alt=" " class="img-responsive">
									</div>
									<div class="rating-left">
										<img src="images/1.png" alt=" " class="img-responsive">
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="simpleCart_shelfItem new-products-grid-right-add-cart">
									<p>
										<span class="item_price">$180</span><a class="item_add" href="#">add to cart </a>
									</p>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="new-products-grid">
							<div class="new-products-grid-left">
								<a href="single.jsp"><img src="images/9.jpg" alt=" " class="img-responsive" /></a>
							</div>
							<div class="new-products-grid-right">
								<h4>
									<a href="single.jsp">eum fugiat quo</a>
								</h4>
								<div class="rating">
									<div class="rating-left">
										<img src="images/2.png" alt=" " class="img-responsive">
									</div>
									<div class="rating-left">
										<img src="images/2.png" alt=" " class="img-responsive">
									</div>
									<div class="rating-left">
										<img src="images/2.png" alt=" " class="img-responsive">
									</div>
									<div class="rating-left">
										<img src="images/1.png" alt=" " class="img-responsive">
									</div>
									<div class="rating-left">
										<img src="images/1.png" alt=" " class="img-responsive">
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="simpleCart_shelfItem new-products-grid-right-add-cart">
									<p>
										<span class="item_price">$250</span><a class="item_add" href="#">add to cart </a>
									</p>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="new-products-grid">
							<div class="new-products-grid-left">
								<a href="single.jsp"><img src="images/11.jpg" alt=" " class="img-responsive" /></a>
							</div>
							<div class="new-products-grid-right">
								<h4>
									<a href="single.jsp">officia deserunt</a>
								</h4>
								<div class="rating">
									<div class="rating-left">
										<img src="images/2.png" alt=" " class="img-responsive">
									</div>
									<div class="rating-left">
										<img src="images/2.png" alt=" " class="img-responsive">
									</div>
									<div class="rating-left">
										<img src="images/2.png" alt=" " class="img-responsive">
									</div>
									<div class="rating-left">
										<img src="images/1.png" alt=" " class="img-responsive">
									</div>
									<div class="rating-left">
										<img src="images/1.png" alt=" " class="img-responsive">
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="simpleCart_shelfItem new-products-grid-right-add-cart">
									<p>
										<span class="item_price">$259</span><a class="item_add" href="#">add to cart </a>
									</p>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<!-- 夏季系列 - 55％的折扣 -->
				<div class="men-position animated wow slideInUp" data-wow-delay=".5s">
					<a href="single.jsp"><img src="images/29.jpg" alt=" " class="img-responsive" /></a>
					<div class="men-position-pos">
						<h4>Summer collection</h4>
						<h5>
							<span>55%</span> Flat Discount
						</h5>
					</div>
				</div>
			</div>
			<div class="col-md-8 products-right">
				<!-- 选择框 和  2019年新系列 -->
				<div class="products-right-grid">
					<div class="products-right-grids animated wow slideInRight" data-wow-delay=".5s">
						<div class="sorting">
							<select id="country" onchange="change_country(this.value)" class="frm-field required sect">
								<option value="null">Default sorting</option>
								<option value="null">Sort by popularity</option>
								<option value="null">Sort by average rating</option>
								<option value="null">Sort by price</option>
							</select>
						</div>
						<div class="sorting-left">
							<select id="country1" onchange="change_country(this.value)" class="frm-field required sect">
								<option value="null">Item on page 9</option>
								<option value="null">Item on page 18</option>
								<option value="null">Item on page 32</option>
								<option value="null">All</option>
							</select>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="products-right-grids-position animated wow slideInRight" data-wow-delay=".5s">
						<img src="images/28.jpg" alt=" " class="img-responsive" />
						<div class="products-right-grids-position1">
							<h4>2019 New Collection</h4>
							<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.</p>
						</div>
					</div>
				</div>
				<!-- 商品列表 -->
				<div class="products-right-grids-bottom" style="padding-right: 1em;">
					<!-- <div class="col-md-4 products-right-grids-bottom-grid"> -->
					<c:forEach items="${pageBean.list }" var="list">

						<div class="col-md-4 new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s" style="margin: 0px;">
							<div class="new-collections-grid1-image">
								<a href="${pageContext.request.contextPath }/productInfo?pid=${list.pid}" class="product-image"><img src="${list.pimage }" alt=" " class="img-responsive"></a>
								<div class="new-collections-grid1-image-pos products-right-grids-pos">
									<a href="${pageContext.request.contextPath }/productInfo?pid=${list.pid}">Quick View</a>
								</div>
								<div class="new-collections-grid1-right products-right-grids-pos-right">
									<div class="rating">
										<div class="rating-left">
											<img src="images/2.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="images/2.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="images/2.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="images/1.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="images/1.png" alt=" " class="img-responsive">
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<h4>
								<a href="${pageContext.request.contextPath }/productInfo?pid=${list.pid}">${list.pname }</a>
							</h4>
							<p>${list.pdesc }</p>
							<div class="simpleCart_shelfItem products-right-grid1-add-cart">
								<p>
									<i> <fmt:setLocale value="en_US" /> <fmt:formatNumber value="${list.market_price }" type="currency" maxFractionDigits="0"></fmt:formatNumber>
									</i> <span class="item_price"><fmt:setLocale value="en_US" /> <fmt:formatNumber value="${list.shop_price }" type="currency" maxFractionDigits="0"></fmt:formatNumber> </span><a class="item_add"
										href="#">add to cart </a>
								</p>
							</div>
						</div>

					</c:forEach>
					<div class="clearfix"></div>
				</div>
				<nav class="numbering animated wow slideInRight" data-wow-delay=".5s">
					<ul class="pagination paging">
						<!-- 前一页 -->
						<c:if test="${pageBean.currentPage == 1 }">
							<li class="disable"><a href="javascript:void(0)" aria-label="Previous"> <span aria-hidden="true">&laquo;</span>${page }
							</a></li>
						</c:if>
						<c:if test="${pageBean.currentPage != 1 }">
							<li><a href="${pageContext.request.contextPath }/productListByCid?cid=${cid }&currentPage${pageBean.currentPage-1 }" aria-label="Previous"> <span aria-hidden="true">&laquo;</span>${page }
							</a></li>
						</c:if>

						<!-- 显示页数 -->
						<c:forEach begin="1" end="${pageBean.totalPage }" var="page">
							<c:if test="${page == pageBean.currentPage }">
								<li class="active"><a href="javascript:void(0)">${page }<span class="sr-only">(current)</span></a></li>
							</c:if>
							<c:if test="${page != pageBean.currentPage }">
								<li><a href="${pageContext.request.contextPath }/productListByCid?cid=${cid}&currentPage=${page }">${page }</a></li>
							</c:if>
						</c:forEach>

						<!-- 下一页 -->
						<c:if test="${pageBean.currentPage == pageBean.totalPage }">
							<li class="disable"><a href="javascript:void(0)" aria-label="Next"> <span aria-hidden="true">&raquo;</span>${page }
							</a></li>
						</c:if>
						<c:if test="${pageBean.currentPage != pageBean.totalPage }">
							<li><a href="${pageContext.request.contextPath }/productListByCid?cid=${cid}&currentPage=${pageBean.currentPage+1}" aria-label="Next"> <span aria-hidden="true">&raquo;</span>${page }
							</a></li>
						</c:if>
					</ul>
				</nav>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<!-- //breadcrumbs -->
	<!-- footer -->
	<div><jsp:include page="footer.jsp" /></div>
	<!-- //footer -->
</body>
</html>