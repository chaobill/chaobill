<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="/common/jsp/top.jsp"%>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>登录</title>

<!-- CSS -->
<%@include file="/common/jsp/top_css.jsp"%>
<link rel="stylesheet" href="<%=_basePath%>login/css/form-elements.css">
<link rel="stylesheet" href="<%=_basePath%>login/css/style.css">

<!-- javascript -->
<%@include file="/common/jsp/top_script.jsp"%>

<!-- Favicon and touch icons -->
<link rel="shortcut icon" href="<%=_basePath%>login/icon/favicon.png">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="<%=_basePath%>login/icon/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="<%=_basePath%>login/icon/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="<%=_basePath%>login/icon/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="<%=_basePath%>login/icon/apple-touch-icon-57-precomposed.png">
</head>
<body>
	<!-- Top content -->
	<div class="top-content">

		<div class="inner-bg">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 col-sm-offset-2 text">
						<h1>
							欢迎来到<strong>超级管理后台</strong>
						</h1>
						<div class="description">
							<p>
								本系统主要用于管理用户、权限、菜单、日志等等...
							</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6 col-sm-offset-3 form-box">
						<div class="form-bottom">
							<form role="form" action="<%=_basePath %>login/login.do" method="post" class="login-form">
								<div class="form-group">
									<label class="sr-only" for="form-username">用户名</label> <input
										type="text" name="form-username" placeholder="请输入用户名..."
										class="form-username form-control" id="form-username">
								</div>
								<div class="form-group">
									<label class="sr-only" for="form-password">密码</label> <input
										type="password" name="form-password" placeholder="请输入密码..."
										class="form-password form-control" id="form-password">
								</div>
								<button type="submit" class="btn">登录</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Javascript -->
	<script src="<%=_basePath%>login/js/login.js"></script>

	<!--[if lt IE 10]>
        <script src="<%=_basePath%>login/js/placeholder.js"></script>
    <![endif]-->
</body>
</html>