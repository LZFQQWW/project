<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>商品详情</title>
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
				<li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Single Page</li>
			</ol>
		</div>
	</div>
	<!-- //breadcrumbs -->
	<!-- single -->
	<div class="single">
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
						<li><a href="products.jsp">Best Selling</a> <span>(15)</span></li>
						<li><a href="products.jsp">Home Collections</a> <span>(16)</span></li>
						<ul>
							<li><a href="products.jsp">Cookware</a> <span>(2)</span></li>
							<li><a href="products.jsp">New Arrivals</a> <span>(0)</span></li>
							<li><a href="products.jsp">Home Decore</a> <span>(1)</span></li>
						</ul>
						<li><a href="products.jsp">Decorations</a> <span>(15)</span></li>
						<ul>
							<li><a href="products.jsp">Wall Clock</a> <span>(2)</span></li>
							<li><a href="products.jsp">New Arrivals</a> <span>(0)</span></li>
							<li><a href="products.jsp">Lighting</a> <span>(1)</span></li>
							<li><a href="products.jsp">Top Brands</a> <span>(0)</span></li>
						</ul>
					</ul>
				</div>
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
			<div class="col-md-8 single-right">
				<div class="col-md-5 single-right-left animated wow slideInUp" data-wow-delay=".5s">
					<div class="flexslider">
						<img src="${product.pimage }" class="img-responsive">
					</div>
					<!-- <div class="flexslider">
						<ul class="slides">
							<li data-thumb="images/si.jpg">
								<div class="thumb-image">
									<img src="images/si.jpg" data-imagezoom="true" class="img-responsive">
								</div>
							</li>
							<li data-thumb="images/si1.jpg">
								<div class="thumb-image">
									<img src="images/si1.jpg" data-imagezoom="true" class="img-responsive">
								</div>
							</li>
							<li data-thumb="images/si2.jpg">
								<div class="thumb-image">
									<img src="images/si2.jpg" data-imagezoom="true" class="img-responsive">
								</div>
							</li>
						</ul>
					</div> -->
					<!-- flixslider -->
					<!-- <script defer src="js/jquery.flexslider.js"></script>
					<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
					<script>
						// Can also be used with $(document).ready()
						$(window).load(function() {
							$('.flexslider').flexslider({
								animation : "slide",
								controlNav : "thumbnails"
							});
						});
					</script> -->
					<!-- flixslider -->
				</div>
				<div class="col-md-7 single-right-left simpleCart_shelfItem animated wow slideInRight" data-wow-delay=".5s">
					<h3>${product.pname }</h3>
					<h4>
						<span class="item_price"><fmt:setLocale value="en_US" /> <fmt:formatNumber value="${product.shop_price }" type="currency" maxFractionDigits="0"></fmt:formatNumber> </span> -
						<fmt:setLocale value="en_US" />
						<fmt:formatNumber value="${product.market_price }" type="currency" maxFractionDigits="0"></fmt:formatNumber>
					</h4>
					<div class="rating1">
						<span class="starRating"> <input id="rating5" type="radio" name="rating" value="5"> <label for="rating5">5</label> <input id="rating4" type="radio" name="rating" value="4">
							<label for="rating4">4</label> <input id="rating3" type="radio" name="rating" value="3" checked> <label for="rating3">3</label> <input id="rating2" type="radio" name="rating" value="2">
							<label for="rating2">2</label> <input id="rating1" type="radio" name="rating" value="1"> <label for="rating1">1</label>
						</span>
					</div>
					<div class="description">
						<h5>
							<i>Description</i>
						</h5>
						<p>${product.pdesc }</p>
					</div>
					<div class="color-quality">
						<div class="color-quality-left">
							<h5>Color :</h5>
							<ul>
								<li><a href="javascript:void(0)"><span></span>Red</a></li>
								<li><a href="javascript:void(0)" class="brown"><span></span>Yellow</a></li>
								<li><a href="javascript:void(0)" class="purple"><span></span>Purple</a></li>
								<li><a href="javascript:void(0)" class="gray"><span></span>Violet</a></li>
							</ul>
						</div>
						<div class="color-quality-right">
							<h5>Quality :</h5>
							<select id="country1" onchange="change_country(this.value)" class="frm-field required sect">
								<option value="null">5 Qty</option>
								<option value="null">6 Qty</option>
								<option value="null">7 Qty</option>
								<option value="null">10 Qty</option>
							</select>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="occasional">
						<h5>上架日期 :</h5>
						<div class="colr ert">${product.pdate }</div>
						<div class="clearfix"></div>
					</div>
					<div class="occasion-cart">
						<a class="item_add" href="#">add to cart </a>
					</div>
					<div class="social">
						<div class="social-left">
							<p>Share On :</p>
						</div>
						<div class="social-right">
							<ul class="social-icons">
								<li><a href="#" class="facebook"></a></li>
								<li><a href="#" class="twitter"></a></li>
								<li><a href="#" class="g"></a></li>
								<li><a href="#" class="instagram"></a></li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"></div>
				<div class="bootstrap-tab animated wow slideInUp" data-wow-delay=".5s">
					<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
						<ul id="myTab" class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Description</a></li>
							<li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">Reviews(2)</a></li>
							<li role="presentation" class="dropdown"><a href="#" id="myTabDrop1" class="dropdown-toggle" data-toggle="dropdown" aria-controls="myTabDrop1-contents">Information <span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1" id="myTabDrop1-contents">
									<li><a href="#dropdown1" tabindex="-1" role="tab" id="dropdown1-tab" data-toggle="tab" aria-controls="dropdown1">cleanse</a></li>
									<li><a href="#dropdown2" tabindex="-1" role="tab" id="dropdown2-tab" data-toggle="tab" aria-controls="dropdown2">fanny</a></li>
								</ul></li>
						</ul>
						<div id="myTabContent" class="tab-content">
							<div role="tabpanel" class="tab-pane fade in active bootstrap-tab-text" id="home" aria-labelledby="home-tab">
								<h5>Product Brief Description</h5>
								<p>
									Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica.
									Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan
									american apparel, butcher voluptate nisi qui. <span>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
										cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span>
								</p>
							</div>
							<div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="profile" aria-labelledby="profile-tab">
								<div class="bootstrap-tab-text-grids">
									<div class="bootstrap-tab-text-grid">
										<div class="bootstrap-tab-text-grid-left">
											<img src="images/4.png" alt=" " class="img-responsive" />
										</div>
										<div class="bootstrap-tab-text-grid-right">
											<ul>
												<li><a href="#">Admin</a></li>
												<li><a href="#"><span class="glyphicon glyphicon-share" aria-hidden="true"></span>Reply</a></li>
											</ul>
											<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit.</p>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="bootstrap-tab-text-grid">
										<div class="bootstrap-tab-text-grid-left">
											<img src="images/5.png" alt=" " class="img-responsive" />
										</div>
										<div class="bootstrap-tab-text-grid-right">
											<ul>
												<li><a href="#">Admin</a></li>
												<li><a href="#"><span class="glyphicon glyphicon-share" aria-hidden="true"></span>Reply</a></li>
											</ul>
											<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit.</p>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="add-review">
										<h4>add a review</h4>
										<form>
											<input type="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required=""> <input type="email" value="Email"
												onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required=""> <input type="text" value="Subject" onfocus="this.value = '';"
												onblur="if (this.value == '') {this.value = 'Subject';}" required="">
											<textarea type="text" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message...';}" required="">Message...</textarea>
											<input type="submit" value="Send">
										</form>
									</div>
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="dropdown1" aria-labelledby="dropdown1-tab">
								<p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed
									craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever
									gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth
									chambray yr.</p>
							</div>
							<div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="dropdown2" aria-labelledby="dropdown2-tab">
								<p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan
									DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater. Lomo wolf
									viral, mustache readymade thundercats keffiyeh craft beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //single -->
	<!-- single-related-products -->
	<div class="single-related-products">
		<div class="container">
			<h3 class="animated wow slideInUp" data-wow-delay=".5s">Related Products</h3>
			<p class="est animated wow slideInUp" data-wow-delay=".5s">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
			<div class="new-collections-grids">
				<div class="col-md-3 new-collections-grid">
					<div class="new-collections-grid1 animated wow slideInLeft" data-wow-delay=".5s">
						<div class="new-collections-grid1-image">
							<a href="single.jsp" class="product-image"><img src="images/8.jpg" alt=" " class="img-responsive"></a>
							<div class="new-collections-grid1-image-pos">
								<a href="single.jsp">Quick View</a>
							</div>
							<div class="new-collections-grid1-right">
								<div class="rating">
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
									<div class="rating-left">
										<img src="images/1.png" alt=" " class="img-responsive">
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
						<h4>
							<a href="single.jsp">Running Shoes</a>
						</h4>
						<p>Vel illum qui dolorem eum fugiat.</p>
						<div class="new-collections-grid1-left simpleCart_shelfItem">
							<p>
								<i>$280</i> <span class="item_price">$150</span><a class="item_add" href="#">add to cart </a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 new-collections-grid">
					<div class="new-collections-grid1-sub">
						<div class="new-collections-grid1 animated wow slideInLeft" data-wow-delay=".6s">
							<div class="new-collections-grid1-image">
								<a href="single.jsp" class="product-image"><img src="images/6.jpg" alt=" " class="img-responsive"></a>
								<div class="new-collections-grid1-image-pos">
									<a href="single.jsp">Quick View</a>
								</div>
								<div class="new-collections-grid1-right">
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
											<img src="images/2.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="images/2.png" alt=" " class="img-responsive">
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<h4>
								<a href="single.jsp">Wall Lamp</a>
							</h4>
							<p>Vel illum qui dolorem eum fugiat.</p>
							<div class="new-collections-grid1-left simpleCart_shelfItem">
								<p>
									<i>$480</i> <span class="item_price">$400</span><a class="item_add" href="#">add to cart </a>
								</p>
							</div>
						</div>
					</div>
					<div class="new-collections-grid1-sub">
						<div class="new-collections-grid1 animated wow slideInLeft" data-wow-delay=".7s">
							<div class="new-collections-grid1-image">
								<a href="single.jsp" class="product-image"><img src="images/9.jpg" alt=" " class="img-responsive"></a>
								<div class="new-collections-grid1-image-pos">
									<a href="single.jsp">Quick View</a>
								</div>
								<div class="new-collections-grid1-right">
									<div class="rating">
										<div class="rating-left">
											<img src="images/2.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="images/1.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="images/1.png" alt=" " class="img-responsive">
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
								<a href="single.jsp">Wall Lamp</a>
							</h4>
							<p>Vel illum qui dolorem eum fugiat.</p>
							<div class="new-collections-grid1-left simpleCart_shelfItem">
								<p>
									<i>$280</i> <span class="item_price">$150</span><a class="item_add" href="#">add to cart </a>
								</p>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-3 new-collections-grid">
					<div class="new-collections-grid1 animated wow slideInLeft" data-wow-delay=".8s">
						<div class="new-collections-grid1-image">
							<a href="single.jsp" class="product-image"><img src="images/11.jpg" alt=" " class="img-responsive"></a>
							<div class="new-collections-grid1-image-pos">
								<a href="single.jsp">Quick View</a>
							</div>
							<div class="new-collections-grid1-right">
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
										<img src="images/2.png" alt=" " class="img-responsive">
									</div>
									<div class="rating-left">
										<img src="images/1.png" alt=" " class="img-responsive">
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
						<h4>
							<a href="single.jsp">Stones Bangles</a>
						</h4>
						<p>Vel illum qui dolorem eum fugiat.</p>
						<div class="new-collections-grid1-left simpleCart_shelfItem">
							<p>
								<i>$340</i> <span class="item_price">$257</span><a class="item_add" href="#">add to cart </a>
							</p>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //single-related-products -->
	<!-- footer -->
	<div><jsp:include page="footer.jsp" /></div>
	<!-- //footer -->
	<!-- zooming-effect -->
	<script src="js/imagezoom.js"></script>
	<!-- //zooming-effect -->
</body>
</html>