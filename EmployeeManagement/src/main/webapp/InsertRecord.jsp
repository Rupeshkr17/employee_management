<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String num = request.getParameter("num");
		String name = request.getParameter("name");
		String salary = request.getParameter("salary");

		String driver = "oracle.jdbc.driver.OracleDriver";
		Class.forName(driver);
		
		try
		{
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String dbname = "system";
			String password = "898771";
			Connection con = DriverManager.getConnection(url, dbname, password);
			
			String query = "insert into employeemanagement values (?,?,?)";
			
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, num);
			ps.setString(2, name);
			ps.setString(3, salary);
			
			int count = ps.executeUpdate();
			
			out.println(count+ "Inserted");
		}
		
		catch(Exception e)
		{
			out.println("Error:: " + e.getMessage());
		}
	%>
</body>
</html>