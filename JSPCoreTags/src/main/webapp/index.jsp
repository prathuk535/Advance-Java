<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<c:set var="salary" value="40000"/>
	
	 <%-- 
		Salary is:	<c:out value="${salary }"/><br>
		Salary is:	${salary }<br>
	--%>
	
	<%--
		<c:if test="${salary>20000}">
			<p>Salary is greater than 20000</p>
		</c:if>
		
		<c:if test="${salary<=20000 }">
			<p>Salary is less than or equal to 20000</p>
		</c:if>
	--%>
	
	<%-- 
		<ul>
			<c:forEach var="i" begin="1" end="10" step="2">
				<li>${i}</li>
			</c:forEach>
		</ul>
	--%>
	
	<%-- 
		<ul>
			<c:forEach var="i" begin="1" end="10" step="1">
				<li>${10-i}</li>
			</c:forEach>
		</ul>
	--%>
	
	<%-- 
		<c:choose>
			<c:when test="${salary>40000}">
				Salary is Good
			</c:when>
			<c:when test="${salary>=20000 && salary<40000 }">
				Salary is low to survive
			</c:when>
			<c:otherwise>
				No Comment Sir
			</c:otherwise>
		</c:choose>
	--%>
	
	<%--
		<c:catch var="e">
		<%
			int c=2/0;
		%>
		</c:catch>
		<c:if test="${e!=null }">
			Error:	${e}<br>
			Message:	${e.message}<br>
		</c:if> 
	 --%>
	 
	 <%--
	 	<c:forTokens var="shirt" items="blue shirt,white shirt,green shirt,maroon shirt" delims=",">
	 		${shirt}<br>
	 	</c:forTokens>
	 --%>
	 
	 <%--
	 	<c:redirect url="https://www.google.com/"></c:redirect>
	  --%>
	  
	 <%--
	 	 <c:import url="https://www.google.com/" var="data"></c:import>
	  	<c:out value="${data}"></c:out>
	  --%>
</body>
</html>