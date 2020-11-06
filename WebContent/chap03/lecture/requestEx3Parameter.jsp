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
<form action="">
name : <input type="text" name= "fname" /> <br />
age : <input type="number" name="age" id=""/> <br />
gender : 남자 <input type="radio" name="gender" value=" male " id="" />
 		 여자 <input type="radio" name="gender" value= "female" id="" /> <br />
food : pizza <input type="checkbox" name="food" value="pizza" id="" />
	   burger<input type="checkbox" name="food" value="burger"id="" />
	   ice coffea<input type="checkbox" name="food" value="ice coffea"id="" />
	   ice tea<input type="checkbox" name="food" value="ice tea" id="" /> <br />
 <input type="submit" value="전송" class="btn btn-primary" />
</form>
<% 
String name= request.getParameter("fname");
String age = request.getParameter("age");
String gender = request.getParameter("gender");
String[] food = request.getParameterValues("food");
%>

name : <%= name %> <hr />
age : <%= age %> <hr />
gender : <%= gender %> <hr />

food : 


<%
if (food != null) {
for (int i = 0; i< food.length; i++) {
	out.print(food[i]);
	if (i != food.length-1) {
		out.print(", ");
		}
	}
}
%>
<br />

</body>
</html>