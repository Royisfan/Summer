<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
</head>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" href="static/css/login.css">
<script src="http://www.w3school.com.cn/jquery/jquery-1.11.1.min.js"></script>
<script src="static/js/login.js"></script>
<body background="static/image/4d29e3737219bb087f084.jpg">
<div class="div_1">
    <form id="form1" class="div_2" name="Login" method="post" action="LoginServlet" onsubmit="return checkUser()">
        <p class="title">欢迎来到教务处</p>
        <div class="div_3">
        <input id="user" type="text" placeholder="Username" name="email" autofocus/>
        <i class="fa fa-user"></i>
        <input id="password" type="password" placeholder="password" name="password" />
        <i class="fa fa-key"></i>
        </div>
        <input id="check_test" type="checkbox" name="remember_me"value="y"><a>记住我</a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a onclick="location='forgotpassword'">忘记密码</a>
        <input type="submit"id="input_1" name="sumbit" value="登录";>
        <input type="button" id="input_2" value="注册" onclick="location='register'">
    </form>
</div>

<% String message = null; 
%>
<% message = (String)session.getAttribute("msg");
	if(message!=null){
		//移除出错误信息
		session.removeAttribute("msg");
		
		out.println("<script>");
		out.println("alert('"+message+"')");
		out.println("</script>");
	}
%>
</body>
</html>