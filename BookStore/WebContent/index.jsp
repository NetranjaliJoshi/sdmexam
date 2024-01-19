<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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