<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.app.dao.Bookdao ,com.app.Book"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="book" class="com.app.Book"/>
<jsp:setProperty  property="*" name="book"/>

<%
int i = Bookdao.addBookIntoTable(book);
if(i>0)
{
	response.sendRedirect("viewBook.jsp");
}
else
{
	response.sendRedirect("error.jsp");
}
%>
</body>
</html>