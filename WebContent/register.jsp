<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.error {
	font-size: 12px;
	color: red;
}
</style>
<title>Register</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<script src="js/jquery.validate.min.js" type="text/javascript"></script>
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

	$.validator.addMethod("checkUsername", function(value, element, params) {
		var flag = true;
		$.ajax({
			"async" : false,//同步操作
			"url" : "${pageContext.request.contextPath}/checkUsername",
			"type" : "POST",
			"data" : {
				"username" : value
			},
			"dataType" : "json",
			"success" : function(data) {
				flag = data.isExist;
			}
		});
		return !flag;
	}, "用户名已被注册，请另选！")

	$(function() {
		$("#registForm").validate({
			rules : {
				"username" : {
					"required" : true,
					"checkUsername" : true
				},
				"password" : {
					"required" : true,
					"rangelength" : [ 6, 12 ]
				},
				"repassword" : {
					"required" : true,
					"rangelength" : [ 6, 12 ],
					"equalTo" : "#password"
				},
				"email" : {
					"required" : true,
					"email" : true
				},
				"telephone" : {
					"required" : true
				},
				"name" : {
					"required" : true
				},
				"birthday" : {
					"required" : true,
					"date" : true
				},
				"sex" : {
					"required" : true
				},
				"checkbox" : {
					"required" : true
				}
			},
			messages : {
				"username" : {
					"required" : "用户名不能为空"
				},
				"password" : {
					"required" : "密码不能为空",
					"rangelength" : "密码长度在6-12位"
				},
				"repassword" : {
					"required" : "确认密码不能为空",
					"rangelength" : "确认密码长度在6-12位",
					"equalTo" : "两次密码不一致"
				},
				"email" : {
					"required" : "邮箱不能为空",
					"email" : "邮箱格式不正确"
				},
				"telephone" : {
					"required" : "电话不能为空"
				},
				"name" : {
					"required" : "真实姓名不能为空"
				},
				"birthday" : {
					"required" : "生日不能为空",
					"date" : "日期格式不正确"
				},
				"sex" : {
					"required" : "性别必须选择"
				},
				"checkbox" : {
					"required" : "不接受相关条款和条件则无法注册账户！"
				}
			},
			errorPlacement : function(error, element) {
				if (element.is(':radio') || element.is(':checkbox')) {
					error.appendTo(element.parent().parent());
				} else {
					error.insertAfter(element);
				}
			}
		});
	})
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
				<li class="active">注册页面</li>
			</ol>
		</div>
	</div>
	<!-- //breadcrumbs -->
	<!-- register -->
	<div class="register">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Register Here</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">如果你还没有你自己的账号，请在这里注册</p>
			<div class="login-form-grids">
				<form id="registForm" role="form" action="${pageContext.request.contextPath}/user" method="post" class="animated wow slideInUp" data-wow-delay=".5s">
					<input type="text" name="username" id="username" placeholder="用户名"> <input type="password" name="password" id="password" placeholder="密码"> <input type="password" name="repassword"
						id="repassword" placeholder="确认密码"> <input type="text" name="name" id="name" placeholder="真实姓名"> <input type="email" name="email" id="email" placeholder="邮箱"> <input
						type="date" name="birthday" id="birthday"> <input type="text" name="telephone" id="telephone" class="form-control" placeholder="电话号码">
					<!-- <input type="text" name="captcha" id="captcha" placeholder="请输入验证码"> <img alt="验证码" src=""> -->
					<div>
						<div for="sex_0">
							<label class="radio-inline"> <input type="radio" name="sex" id="sex_0" value="sex_0"> 男
							</label> <label class="radio-inline"> <input type="radio" name="sex" id="sex_1" value="sex_1"> 女
							</label>
						</div>
					</div>
					<div class="register-check-box">
						<div class="check">
							<label class="checkbox"><input type="checkbox" id="checkbox" name="checkbox"><i> </i>勾选此框表示您接受相关条款和条件</label>
						</div>
					</div>
					<input type="submit" value="注册">
				</form>
			</div>
			<div class="register-home animated wow slideInUp" data-wow-delay=".5s">
				<a href="index.jsp">首页</a>
			</div>
		</div>
	</div>
	<!-- //register -->
	<!-- footer -->
	<div><jsp:include page="footer.jsp" /></div>
	<!-- //footer -->
</body>
</html>