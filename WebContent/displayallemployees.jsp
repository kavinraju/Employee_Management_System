<%@page import="com.Employee"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.EmployeeDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Details</title>
</head>
<body>
	<center><h2>Employee Details</h2></center>
	<%
		EmployeeDao dao = new EmployeeDao();
		ArrayList<Employee> employees = dao.getAllEmployees();
		if(employees != null && employees.size()>0){
	%>
	
	<table align="center" border="1px" width="40%" >
		<tr>
			<td><b>ID</b></td>
			<td><b>Name</b></td>
			<td><b>Gender</b></td>
			<td><b>Dept</b></td>
			<td><b>Salary</b></td>
		</tr>
	<%
		for(Employee employee: employees){
	%>
		<tr>
			<td> <%= employee.getEmpID() %></td>
			<td> <%= employee.getName() %></td>
			<td> <%= employee.getGender() %></td>
			<td> <%= employee.getDept() %></td>
			<td> <%= employee.getSalary() %></td>
		</tr>
	<%
		}
	%>
	</table>
	
	<%
		}else{
	%>
	
	<center><h2 style="color:red;">Student Details not available</h2></center>
	
	<%
		}
	%>
	<a href="index.html" style="padding:40px;">Home</a>
</body>
</html>