<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<title>活动记录后台登录</title>
<!-- Custom Theme files -->
<link href="change/css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="后台登录" />
<!--Google Fonts-->
<!--<link href='//fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
--><!--Google Fonts-->
</head>
<body>
<!--header start here-->
<div class="login-form">
			<div class="top-login">
				<span><img src="change/images/group.png" alt=""/></span>
			</div>
			<h1>登录</h1>
			<div class="login-top">
			<form action="${pageContext.request.contextPath}/UserServlet?method=login"
				  class="login-form fv-form fv-form-bootstrap" method="post" id="loginForm"
				  novalidate="novalidate">
				<div class="login-ic">
					<i ></i>
					<input type="text" name="username" placeholder="请输入用户名" />
					<div class="clear"> </div>
					<i class="form-control-feedback" data-fv-icon-for="loginName" style="display: none;"></i>
					<small class="help-block" data-fv-validator="notEmpty" data-fv-for="loginName"
						   data-fv-result="NOT_VALIDATED" style="display: none;">用户名不能为空
					</small>
				</div>
				<%
					String err= (String) request.getAttribute("err");
					if(err !=null){
				%>
				<span style="color: red"><%=err%></span>
				<%
					}
				%>
				<div class="login-ic">
					<i class="icon"></i>
					<input type="password" name="password" placeholder="请输入密码" />
					<div class="clear"> </div>
				</div>
				<div class="log-bwn">
					<input type="submit" value="登录" >
				</div>
				</form>
			</div>

			<p class="copy">© 2017 ThoughtWorks工作室活动记录</p>
</div>		
<!--header start here-->
</body>
</html>