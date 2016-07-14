<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String _path = request.getContextPath();
	String _basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + _path + "/";
%>
<!DOCTYPE html>

<!-- css样式 -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
<link rel="stylesheet"
	href="<%=_basePath %>common/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=_basePath %>common/font-awesome/css/font-awesome.min.css">

<!-- script脚本 -->	
<script src="<%=_basePath%>common/jquery/js/jquery-1.12.1.min.js"></script>
<script src="<%=_basePath%>common/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=_basePath%>common/jquery/js/jquery.backstretch.min.js"></script>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<script type="text/javascript">
	var _path = '<%=_path%>';
	var _basePath = '<%=_basePath%>';
</script>	