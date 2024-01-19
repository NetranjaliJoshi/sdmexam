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
<%
String s =request.getParameter("id"));
Object obj = s;
Book b = Bookdao.updateBooksobj);
%>
<form action="addBook.jsp" method="post" >
<table>
<tr>
<td>Enter Auther Name </td>
<td><input type="text" name="author"> </td>
</tr>

<tr>
<td>Enter Book Name</td>
<td><input type="text" name="bookName"> </td>
</tr>



<tr>
<td>Publication</td>
<td><input type="text" name="title"> </td>
</tr>

<tr>
<td>Price</td>
<td><input type="number" name="price"> </td>
</tr>


<tr>
<td><input type="submit" value="Add Book"> </td>
</tr>




</table>

</form>


</body>
</html>