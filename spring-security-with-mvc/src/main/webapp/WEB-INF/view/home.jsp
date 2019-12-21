<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security"  uri="http://www.springframework.org/security/tags" %>
<html>

<head>
	<title> Company Home Page </title>
</head>

<body>
	<h2>Company Home Page</h2>
	<hr>	
	<p>Welcome to the company home page!</p>
	
	<hr>
	User : <security:authentication property="principal.username"/><br>
	Role(s) : <security:authentication property="principal.authorities"/><br>
	
	
	<security:authorize access="hasRole('MANAGER')">
		<a href="${pageContext.request.contextPath }/leaders">Leadership Meeting</a><br>
	</security:authorize>
	
	<security:authorize access="hasRole('ADMIN')">
		<a href="${pageContext.request.contextPath }/systems">IT Systems Admin</a>
	</security:authorize>	
	
	<hr>	
	<form:form action="${pageContext.request.contextPath }/logout" method="POST">
		<input type="submit" value="Logout" />
	</form:form>

</body>

</html>