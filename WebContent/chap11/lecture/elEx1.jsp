<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="car" class="chap08.Car" scope="page"> 
	<jsp:setProperty name = "car" property="name" value="kia" />
	<jsp:setProperty name = "car" property="speed" value="100" />
</jsp:useBean>


<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>scriptlet</h3>
<%
chap08.Car carData = (chap08.Car) pageContext.getAttribute("car"); 
%>

<h3>expression</h3>
<%= carData.getName() %> <br />
<%= carData.getSpeed() %>

<h3>action tag</h3>
<jsp:getProperty property="name" name="car"/> <br />
<jsp:getProperty property="speed" name="car"/>

<h3>expression language(EL) 표현 언어</h3> <%-- 자바랑 비슷해보이지만 다른언어임 --%>
<%-- #{}는 생략하고 넘어가도된다 --%> 
${car.name } <br />
${car.speed } <br />
</body>
</html>