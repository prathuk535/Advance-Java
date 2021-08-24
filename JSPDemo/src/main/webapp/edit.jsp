<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	.myclass
	{
		margin:0 auto;
	}
</style>
</head>
<body>
	
	<jsp:include page="header.jsp"></jsp:include>
	<sql:setDataSource driver="com.mysql.jdbc.Driver"
						url="jdbc:mysql://localhost:3306/demo"
						user="root"
						password="root"
						var="con"/>
						
	<sql:query var="rs" dataSource="${con}">
		select * from books where bookid=?
		<sql:param>${param.bookid}</sql:param>
	</sql:query>
	
	<div class="container">
		<center>
		<jsp:include page="header.jsp"></jsp:include>
		</center>
		<c:forEach items="${rs.rows}" var="row">
		<form action="UpdateBookServlet" method="post" class="myclass col-lg-6 col-md-6 col-sm-12 col-xs-12">
			<div class="form-group">
				<label>Enter Book Id</label>
				<input type="text" name="bookid" value="${row.id}" placeholder="Enter Book Id" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Enter Book Name</label>
				<input type="text" name="bookname" value="${row.bookname}" placeholder="Enter Book Name" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Enter Author</label>
				<input type="text" name="author" value="${row.author}" placeholder="Enter Author" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Enter Price</label>
				<input type="text" name="price" value="${row.price}" placeholder="Enter Price" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Link</label>
				<input type="text" name="link" value="${row.link}" placeholder="Enter Link" class="form-control"/>
			</div>
			<div class="form-group">
				<input type="submit" value="Update Book"  class="btn btn-primary btn-block"/>
				<input type="reset" value="Reset" class="btn btn-danger btn-block"/>
			</div>
		</form>
		</c:forEach>
	</div>
</body>
</html>