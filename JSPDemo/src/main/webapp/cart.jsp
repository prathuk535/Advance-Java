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
		select * from cartitems where username=?
		<sql:param>${u.username}</sql:param>
	</sql:query>
	
	<c:forEach items="${rs.rows}" var="cartdetails">
	<sql:query var="rs2" dataSource="${con}">
		select * from books where bookid=?
		<sql:param>${cartdetails.bookid}</sql:param>
	</sql:query>

	<div class="container">
		<div class="row">
			<c:forEach items="${rs2.rows}" var="row">
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12" border="1 px solid black">
					<img href="book.jsp?bookid=${row.bookid}" src="ImageServlet?id=${row.bookid}" style="height:200px" clas="col-lg-12"/>
					<h5 class="col-lg-12">${row.bookname}</h5>
					<h5 class="col-lg-12">Rs. ${row.price}</h5>
					<h5 class="col-lg-12">${row.author}</h5>
					<h5 class="col-lg-12">Total Price : ${row.price*cartdetails.quantity}</h5>
					
					<form action="UpdateCartServlet" method="post">
					<input type="text" name="bookid" value="${row.bookid}" hidden>
					Quantity<input type="number" name="qty" value="${cartdetails.quantity}">
					<input type="submit" class="btn btn-success btn-block" value="Update Cart">
					</form>
					
					<c:if test="${row.price>0}">
						<a href="" class="btn btn-primary btn-block">Buy</a>
					</c:if>
					<c:if test="${row.price<=0}">
						<a href="" class="btn btn-secondary btn-block">Read</a>
					</c:if>
					<c:if test="${u.role=='admin'}">
						<a href="DeleteServlet?bookid=${row.bookid}" class="btn btn-success btn-block">Delete</a>
						<a href="edit.jsp?bookid=${row.bookid}" class="btn btn-warning btn-block">Edit</a>
					</c:if>
				</div>
			</c:forEach>	
		</div>
	</div>
	</c:forEach>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>