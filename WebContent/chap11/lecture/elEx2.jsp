<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%@ page import="chap08.Car" %>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="car" class = "chap08.Car">
	<jsp:setProperty property="name" name="car" value = "kia" />
</jsp:useBean>

<jsp:useBean id="car2" class="chap08.Car">
	<jsp:setProperty property="name" name="car2" value="volvo"/>
</jsp:useBean>
<%
	Car car3 = new Car();
	car3.setName("benz");
	request.setAttribute("car", car3);
%>
<%
//pageContext.setAttribute("car", car);
//pageContext.setAttribute("car2", car2);
%>

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
${car } <%-- 각 영역의 "car" attribute를 찾음 --%>
<br />		<%-- 찾는 순서 : page, request, session, application (작은범위부터 큰쪽으로) --%>
${car.name }
<br />
${car2 }
<br />
${car3 }  <%-- 값이 없으면 null이 나오는게아니고 아무것도 나오지않음 --%>
 
</body>
</html>