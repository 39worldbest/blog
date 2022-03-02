<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录界面 | MyBlog</title>
 	<!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->  
    <link rel="stylesheet" href="/Blog/css/public.css" /> 
    <link rel="stylesheet" href="/Blog/css/login.css" />  
</head>
<%
String errorInfo = (String)request.getAttribute("loginError");         // 获取错误属性
if(errorInfo != null) {
%>
<script type="text/javascript" language="javascript">
alert("<%=errorInfo%>");                                            // 弹出错误信息
</script>
<%
}
%>
<body>
	<div class="container">
		<form 
			action="/Blog/LoginServlet" 
			method="post">

			<h1>
				<a href="/Blog/index.jsp">MyBlog</a>
			</h1>

			<label 
			for="input" 
			class="sr-only">账号</label> 
			
			<input 
			type="text" 
			id="input" 
			class="form-control" 
			placeholder="ç¨æ·å" 
			name="username"
			required>
			
			<label 
			for="inputPassword" 
			class="sr-only">密码 </label>
			
			<input 
			type="password" 
			id="inputPassword" 
			class="form-control"
			placeholder="å¯ç " 
			name="password" 
			required>

			<button 
			class="btn btn-lg btn-primary btn-block" 
			type="submit"
			id="submit">登录</button>

			<a 
			class="visitor" 
			href="/Blog/index.jsp">以游客方式登录</a>
		</form>
	</div>


	<div id="footer">
		<a target="_blank" 
			href="#">
		<img src="/Blog/img/github.png"	
		width="22px" 
		height="22px" class="img-circle">GitHub</a>
		by ZhangHao.		
	</div>
	<!-- footer -->
</body>
</html>