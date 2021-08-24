<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<sql:setDataSource driver="com.mysql.jdbc.Driver"
						url="jdbc:mysql://localhost:3306/demo"
						user="root"
						password="root"
						var="con"/>
						
	<sql:query var="rs" dataSource="${con}">
		select * from books where status='A'
	</sql:query>
<%-- 
 	<table class="table">	
		<tr>
			<th>Book Image</th>
			<th>Book Id</th>
			<th>Book Name</th>
			<th>Book Author</th>
			<th>Book Price</th>
			<th>Book Link</th>
		</tr>
	<c:forEach items="${rs.rows}" var="row">
		<tr>
			<td><img src="ImageServlet?id=${row.bookid}" /></td>
			<td>${row.bookid}</td>
			<td>${row.bookname}</td>
			<td>${row.author}</td>
			<td>${row.price}</td>
			<td>${row.link}</td>
		</tr>
	</c:forEach>
	</table>
--%>
	<div class="container">
		<div class="row">
			<c:forEach items="${rs.rows}" var="row">
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12" border="1 px solid black">
					<img href="book.jsp?bookid=${row.bookid}" src="ImageServlet?id=${row.bookid}" style="height:200px" class="col-lg-12"/>
					<h3 class="col-lg-12">${row.bookname}</h3>
					<h4 class="col-lg-12">Rs. ${row.price}</h4>
					<a href="" class="btn btn-primary btn-block">Add to cart</a>
					<a href="" class="btn btn-danger btn-block">Buy</a>
				</div>
			</c:forEach>	
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>