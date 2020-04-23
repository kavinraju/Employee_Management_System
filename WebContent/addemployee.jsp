<%@page import="com.Employee"%>
<%@page import="com.EmployeeDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Employee</title>
</head>
<body>
	<center><h2>Add Employee Result</h2></center>
	<%
	
		String tmp_id = request.getParameter("empId");
		String empName = request.getParameter("empName");
		String gender = request.getParameter("gender");
		String dept = request.getParameter("dept");
		String tmp_salary = request.getParameter("salary");
		
		int id = Integer.parseInt(tmp_id);
		double salary = Double.parseDouble(tmp_salary);
		
		EmployeeDao dao = new EmployeeDao();
		Employee employee = new Employee(id,empName,gender,dept,salary);
		dao.addEmployee(employee);
	%>
	<h2>Added Employee Successfully<br>
			<%=employee.toString() %>
	 </h2>

	<a href="index.html" style="padding:40px;">Home</a>
</body>
</html>