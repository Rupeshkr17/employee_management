<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Insert Employee Details </h1>
	<form action = 'InsertRecord.jsp' method = 'post'>
		<label>Employee Id: </label>
		<input type = 'text' name = "num"/>
		<br/>
		
		<label>Employee Name: </label>
		<input type = 'text' name = "name"/>
		<br/>
		
		<label>Employee Salary: </label>
		<input type = 'text' name = "salary"/>
		<br/>
		
		<input type ="submit" value = "insert"/>
	</form>
</body>
</html>