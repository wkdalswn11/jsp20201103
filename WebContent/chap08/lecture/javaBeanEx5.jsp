<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="car" scope="page" class="chap08.Car" /> 
<% // scope = "page" 는 생략가능 안쓰면 page임 %>
<%
//car.setName("kia"); //useBean의 id 와 setProperty의 name은 같아야함 그래야 사용가능
%>
<%-- car.setName() 과 같은 역할 --%>
<jsp:setProperty property="name" value ="Audi R8" name="car"  />
<%-- car.setSpeed() 과 같은 역할 --%>
<jsp:setProperty property="speed" value ="250" name="car"  />
<%-- 
<jsp:setProperty property="stop" value ="false" name="car"  />
--%>

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
<h1><%= car.getName() %></h1>
<h1><%= car.getSpeed() %></h1>

</body>
</html>