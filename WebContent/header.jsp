<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- header -->
<script>
	$
			.ajax({
				"type" : "POST",
				"url" : "${pageContext.request.contextPath}/categoryList",
				"success" : function(data) {
					var categoryList = "";
					categoryList += "<li><a href='index.jsp'>首页</a></li>";
					for (var i = 0; i < data.length; i++) {
						categoryList += "<li><a href='${pageContext.request.contextPath}/productListByCid?cid="
								+ data[i].cid
								+ "'>"
								+ data[i].cname
								+ "</a></li>";
					}
					categoryList += "<li><a href='mail.jsp'>联系我们</a></li>";
					$("#category_ul").html(categoryList);
				},
				"dataType" : "json"
			});
</script>
<div class="header">
	<div class="container">
		<div class="header-grid">
			<div class="header-grid-left animated wow slideInLeft" data-wow-delay=".5s">
				<ul>
					<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">wqm1194902725@gmail.com</a></li>
					<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+18020223236</li>
					<li><i class="glyphicon glyphicon-log-in" aria-hidden="true"></i><a href="login.jsp">登录</a></li>
					<li><i class="glyphicon glyphicon-book" aria-hidden="true"></i><a href="register.jsp">注册</a></li>
				</ul>
			</div>
			<div class="header-grid-right animated wow slideInRight" data-wow-delay=".5s">
				<ul class="social-icons">
					<li><a href="#" class="facebook"></a></li>
					<li><a href="#" class="twitter"></a></li>
					<li><a href="#" class="g"></a></li>
					<li><a href="#" class="instagram"></a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="logo-nav">
			<div class="logo-nav-left animated wow zoomIn" data-wow-delay=".5s">
				<h1>
					<a href="index.jsp">MG Store <span>Shop anywhere</span></a>
				</h1>
			</div>
			<div class="logo-nav-left1">
				<nav class="navbar navbar-default"> <!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header nav_2">
					<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
						<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
				</div>
				<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
					<ul class="nav navbar-nav" id="category_ul">
						<!-- <li><a href="index.jsp">首页</a></li> -->
						<!-- Mega Menu -->
						<%-- <c:forEach items="${allCategoryList }" var="category">
							<li><a href="${category.cdesc }">${category.cname } </a></li>
						</c:forEach> --%>
						<!-- /Mega Menu -->
						<!-- <li><a href="mail.jsp">联系我们</a></li> -->
					</ul>
				</div>
				</nav>
			</div>
			<div class="logo-nav-right">
				<div class="search-box">
					<div id="sb-search" class="sb-search">
						<form>
							<input class="sb-search-input" placeholder="输入你的搜索词…" type="search" id="search"> <input class="sb-search-submit" type="submit" value=""> <span class="sb-icon-search"> </span>
						</form>
					</div>
				</div>
				<!-- search-scripts -->
				<script src="js/classie.js"></script>
				<script src="js/uisearch.js"></script>
				<script>
					new UISearch(document.getElementById('sb-search'));
				</script>
				<!-- //search-scripts -->
			</div>
			<div class="header-right">
				<div class="cart box_1">
					<a href="checkout.jsp">
						<h3>
							<div class="total">
								<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> 件)
							</div>
							<img src="images/bag.png" alt="" />
						</h3>
					</a>
					<p>
						<a href="javascript:;" class="simpleCart_empty">清空购物车</a>
					</p>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- //header -->
