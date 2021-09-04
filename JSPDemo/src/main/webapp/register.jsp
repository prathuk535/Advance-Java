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
	<script>
			function myfunction(element)
			{
				var url="ValidateServlet?value="+element.value+"&id="+element.id;
				var xhttp=new XMLHttpRequest();
				
				xhttp.onreadystatechange=function()
				{
					if(this.readyState==4 && this.status==200)
						{
							document.getElementById("msg"+element.id).innerHTML=this.responseText;
						}
				};
				xhttp.open("GET",url);
				xhttp.send();
			}
	</script>
	<div class="container">
	<center>
		<jsp:include page="header.jsp"></jsp:include>
		<h3>This is Register Page</h3>
	</center>
		<form action="RegistrationServlet" method="post" class="col-lg-6 col-md-6 col-sm-12 col-xs-12 myclass">
			<div class="form-group">
				<label>Enter Username</label>
				<input type="text" name="username" id="username" onkeyup="myfunction(this)" placeholder="Enter Username" class="form-control"/>
				<span id="msgusername" style="color:red"></span>
			</div>
			<div class="form-group">
				<label>Enter E-mail</label>
				<input typ="email" name="email" id="email" onkeyup="myfunction(this)" placeholder="Enter E-mail" class="form-control"/>
				<span id="msgemail" style="color:red"></span>
			</div>
			<div class="form-group">
				<label>Enter Password</label>
				<input type="password" name="password" placeholder="Enter Password" class="form-control"/>
			</div>
			<div class="form-group">
				<input type="reset" value="Reset" class="btn btn-primary btn-block"/>
				<input type="submit" value="Register" class="btn btn-danger btn-block"/>
			</div>
		</form>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>