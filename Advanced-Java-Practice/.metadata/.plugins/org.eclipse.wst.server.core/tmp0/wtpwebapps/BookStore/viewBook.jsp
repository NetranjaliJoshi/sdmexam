<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.app.dao.Bookdao ,com.app.Book"%>
    <%@ page import="java.util.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
List<Book> list = Bookdao.getAllBooks();
request.setAttribute("list", list);

%>
<table border="1" width="100%">
<tr>
<th>ID</th>
<th>Author Name</th>
<th>Book Name</th>
<th>Book Title</th>
<th>Edit</th>
<th>Delete</th>


</tr>
<c:forEach var="b" items="${list}">
<tr>
<td>${b.getId()}</td>
<td>${b.getAuthor()}</td>
<td>${b.getBookName()}</td>
<td>${b.getTitle()}</td>
<td>${b.getPrice()}</td>

<td><a href="editBook.jsp?id=${b}">Edit</a></td>
<td><a href="delete.jsp"?id=${b}>Delete</a></td>
</tr>
</c:forEach>

</table>

</body>
</html>