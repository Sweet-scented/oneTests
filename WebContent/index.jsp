<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录界面</title>
</head>
<body>
	<h2 align="center">即时通讯系统</h2>
	<form action="LoginCheck.jsp" method="post">
		<table align="center">
			<tr>
				<td>账户：</td>

				<td><input type="text" name="username" /></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="password" name="passwd" /></td>

			</tr>
			<tr>
				<td><input align="left" type="submit" value="提交"></td>
				<td><input align="right" type="reset" value="重置"></td>
			</tr>

		</table>
	</form>
</body>
</html>