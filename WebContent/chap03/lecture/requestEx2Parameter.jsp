<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
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

<form>
	<input type="text" name="ID"/> <br/>
	<input type="text" name="password"/> <br/>
	<input type="password"  name="pw2"/> <br/>
	<input type="number" name="age"  value="1"/>	<br/>
	<input type="date" name="date" />
	<input type="submit" value="전송" />
</form>
<%
String val1 = request.getParameter("ID");
String val2 = request.getParameter("password");
String val3 = request.getParameter("pw2");
String val4 = request.getParameter("age");
int val4int = 0;
if (val4 != null) {
 val4int = Integer.valueOf(val4);
}
String val5 = request.getParameter("date");
%>
ID : <%= val1 %> <br />
password : <%= val2 %> <br />
pw2 : <%= val3 %> <br />
age : <%= val4 %> <br />
date: <%= val5 %> <br />

</body>
</html>