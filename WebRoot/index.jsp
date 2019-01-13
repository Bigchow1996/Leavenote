<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<title>我的请假条</title>
<!-- Custom Theme files -->
<link href="css/loginstyle.css" rel="stylesheet" type="text/css" media="all"/>
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" media="screen" />
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
</head>
<script>
	<c:choose>
		<c:when test="${param.type==1}">
			alert("注册成功快登陆");
		</c:when>
		<c:when test="${param.type==2}">
			alert("登陆状态已失效，玩的就是真实");
		</c:when>
		<c:when test="${param.type==3}">
			alert("密码修改成功请重新登陆，玩的就是真实");
		</c:when>
		<c:when test="${param.type==4}">
			alert("账号或密码错了");
		</c:when>
	</c:choose>
</script>
<body>
<div class="login">
	<h2>我的请假条v1.4</h2>
	<div class="login-top">
		<h1>欢迎登录</h1>
		<form action="login" method="post">
			<input type="text" name="userNumber"  required  placeholder="手机号码/学号">
			<input type="password" name="password" required placeholder="密码" >
		    <div class="forgot">
		    	<a href="forgetpwd.jsp">忘记密码</a>
				<input type="submit"  value="登录" >
		    </div>
	    </form>
	</div>
	<div class="login-bottom">
		<h3>新用户 &nbsp;<a href="register.jsp">注册</a>&nbsp 这里</h3>
	</div>
</div>	
<div class="copyright">
</div>
</body>
</html>