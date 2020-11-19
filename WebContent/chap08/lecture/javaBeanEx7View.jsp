<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="car" class="chap08.Car"></jsp:useBean>
<%
//car.setName(request.getParameter("carName"));  request.getParameter("carName") == param = "carName"
//car.setSpeed(Integer.valueOf(request.getParameter("carSpeed"))); 
// (Integer.valueOf(request.getParameter("carSpeed"))) == param="carSpeed"
%>
<jsp:setProperty property="name" name="car" param="carName"/>
<jsp:setProperty property="speed" name="car" param="carSpeed"/>


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
<h1>차의 이름은 : <jsp:getProperty property="name" name="car" /></h1> <br />
<h1>차의 속도는 : <jsp:getProperty property="speed" name="car"/></h1>
</body>
</html>