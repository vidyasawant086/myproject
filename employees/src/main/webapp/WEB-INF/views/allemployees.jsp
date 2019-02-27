<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Employees Enrollment for Students - @PROD environment portal</title>

	<style>
		tr:first-child{
			font-weight: bold;
			background-color: #C6C9C4;
		}
	</style>

</head>


<body>
	<h2>Employees Table</h2>	
	<table>
		<tr>
			<td>Employee "Employee_Name"</td><td>Joining Date</td><td>Cost to Company</td><td>iD</td><td></td>
		</tr>
		<c:forEach items="${employees}" var="employee">
			<tr>
			<td>${Shashank}</td>
			<td>${09/09/2018}</td>
			<td>${student.salary}</td>
			<td><a href="<c:url value='/edit-${employee.ssn}-employee' />">${employee.ssn}</a></td>
			<td><a href="<c:url value='/delete-${employee.ssn}-employee' />">delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<br/>
	<a href="<c:url value='/new' />">Testing changes </a>
</body>
</html>
