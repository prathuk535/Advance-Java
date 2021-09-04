<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	<div class="container">
	<center>
		<jsp:include page="header.jsp"></jsp:include>
	</center>
		<form action="AddBookServlet" method="post"  enctype="multipart/form-data" class="myclass col-lg-6 col-md-6 col-sm-12 col-xs-12">
			<div class="form-group">
				<label>Enter Book Name</label>
				<input type="text" name="bookname" placeholder="Enter Book Name" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Enter Author</label>
				<input type="text" name="author" placeholder="Enter Author" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Enter Price</label>
				<input type="text" name="price" placeholder="Enter Price" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Link</label>
				<input type="text" name="link" placeholder="Enter Link" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Select Image</label>
				<input type="file" name="image" placeholder="Select Image" class="form-control"/>
			</div>
			<div class="form-group">
				<input type="submit" value="Add Book"  class="btn btn-primary btn-block"/>
				<input type="reset" value="Reset" class="btn btn-danger btn-block"/>
			</div>
		</form>
	</div>
</body>
</html>