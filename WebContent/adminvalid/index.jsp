<%@page import="com.admin.valid.AdminIsValid"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String _username = request.getParameter("username");
		boolean isValid = AdminIsValid.adminIsValid(_username, "kerem");
	%>
	<%= isValid %>
</body>
</html>