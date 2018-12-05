<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
<head>
	<meta charset="UTF-8">
	<title>登录</title>
	<link rel='stylesheet prefetch' href='css/bootstrap.min.css'>
	<link rel="stylesheet" href="css/login.css">
	<link rel="stylesheet" href="font-awesome/css/font-awesome.css">
</head>
<body background="img/login.jpg">
	<div class="logo">
		<form class="form" action="login_accept.jsp">       
      		<h2 class="heading">校企联盟管理员登录</h2>
			<input type="text" class="form-control" name="name" placeholder="请输入姓名" />
			<input type="password" class="form-control" name="password" placeholder="请输入密码密码" />      
			<input class="btn btn-lg btn-primary btn-block" type="submit" value="登录" />
    	</form>
    	<div class="return1">
    		<a href="index.jsp"><i class="fa fa-arrow-left"></i>返回网站</a>
    	</div>
	</div>
	
</body>
</html>