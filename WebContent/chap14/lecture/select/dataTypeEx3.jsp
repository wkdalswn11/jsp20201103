<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String sql = "SELECT hiredate FROM employee WHERE eno = 7369";

String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String user = "c##mydbms";
String pw = "admin";

java.sql.Date hireDate = null; // import 에 자바유틸 자바에스큐엘에 date 가 다있기때문에 상세히써야함

Class.forName("oracle.jdbc.driver.OracleDriver");


try (Connection conn = DriverManager.getConnection(url, user, pw);
		Statement stmt = conn.createStatement();) {
		
		ResultSet rs = stmt.executeQuery(sql);
		
		if(rs.next()) {
			hireDate = rs.getDate("hiredate");
		}
		
		}catch (Exception e) {
			e.printStackTrace();
		}
	
	

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<h1>hireDate : <%= hireDate %></h1>
</body>
</html>