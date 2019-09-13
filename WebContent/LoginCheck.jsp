<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page contentType="text/html; charset=UTF-8" import="Dao.User" %>
    <%@page contentType="text/html; charset=UTF-8" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录检查</title>
</head>
<body>
	<%
		String username = request.getParameter("username");
		String passwd = request.getParameter("passwd");
		/* if(username.equals("admin")&&passwd.equals("admin")){
			User u = new User(username,passwd);
			session.setAttribute("username", username);
			pageContext.forward("LoginSuccess.jsp");
		}else{
			pageContext.forward("LoginFail.jsp");
		} */
		
		
		%>
		<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.45.129:3306/Test","root","155465");
		Statement stat = conn.createStatement();
		String QuerrySQL= "SELECT * from User where username='"+username+"'and passwd ='"+passwd+"'";
		ResultSet rs = stat.executeQuery(QuerrySQL);
		boolean flag = false;
		if(rs.next()){
			flag = true;
			session.setAttribute("username", username);
		}else{
			flag = false;
		}
		
		%>
		<%if(flag)
		{
			pageContext.forward("LoginSuccess.jsp");
		}else{
			pageContext.forward("LoginFail.jsp");
		}
			%>
			<%rs.close();
			stat.close();
			conn.close();
			
			%>
		
</body>
</html>