<%@page import="com.admin.transactions.AllTransactions"%>
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
		String inputUsername = request.getParameter("username");
		String inputPass = request.getParameter("pass");
		AllTransactions a = new AllTransactions();
		boolean result = false;
		if(inputUsername != null && inputPass != null)
			result = a.adminLogin(inputUsername, inputPass);
		if(result){
			response.sendRedirect("showblog.jsp");
			session.setAttribute("username", inputUsername);}
		else{
			response.sendRedirect("../adminlogin/");
		}
	%>
</body>
</html>