<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录失败</title>
</head>
<body>
	<h2 align="center">
		登录失败<%
		out.print(request.getParameter("username"));
	%>请重新检查密码和账户名称
	</h2>
	<%-- <%
		pageContext.forward("index.jsp");
	%> --%>
</body>
</html>