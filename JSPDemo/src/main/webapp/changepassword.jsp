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
		<form action="ChangePasswordServlet" method="post" class="col-lg-6 col-md-6 col-sm-12 col-xs-12 myclass">
			<div class="form-group">
				<label>Enter Password</label>
				<input type="text" name="Enter Password" placeholder="Enter Password" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Confirm Password</label>
				<input type="text" name="Confirm Password" placeholder="Confirm Password" class="form-control"/>
			</div>
			<div class="form-group">
				<input type="submit" value="Change Password" class="btn btn-primary btn-block"/>
				<input type="reset" value="Reset" class="btn btn-danger btn-block"/>
			</div>
		</form>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>