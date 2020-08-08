<%@page import="java.nio.file.*"%>
<%@page import="java.util.*,java.nio.*"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.admin.transactions.AllTransactions" %>
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
AllTransactions a = new AllTransactions();
String transaction_persist = request.getParameter("transaction_persist");
String transaction_update = request.getParameter("transaction_update");
if(transaction_persist!=null)
{	
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	boolean result = a.isPersist(title,new Date(System.currentTimeMillis()), content);
	response.sendRedirect("../admintransactions/addblog.jsp");
}
if(transaction_update!=null)
{
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	long blogId = Long.parseLong(request.getParameter("blogHiddenId"));
	boolean result = a.update(title, content, blogId);
	response.sendRedirect("../admintransactions/showblog.jsp");
}


%>
</body>
</html>