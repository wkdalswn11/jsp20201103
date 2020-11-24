<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
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
<c:choose>
  	<c:when test="false">
  		<h1>hello 1</h1>   <%-- 위에서 true이면 밑에는 보이지않음 --%>
  	</c:when>
  	<c:when test="false">
  		<h1>hello 2</h1>
  	</c:when>
  	<c:otherwise>
  		<h1>hello 3</h1>	<%-- 모든 when 에서  false면 실행  switch case 문에서 default 역할 --%>
  	</c:otherwise>
</c:choose>
</body>
</html>