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
<c:url value="jstlEx01.jsp" var="myUrl"> <%-- scope을 지정안해주면 기본으로는 page 영역임 --%>
	<c:param name="id" value="3"/>
	<c:param name="name" value="john"/>  <%-- url + param을 이용하여 쿼리스트링을 만들어줄수있음 --%>
</c:url>
<a href="${myUrl }">예제 01</a>
<%-- <a href="jstlEx01.jsp?id=3&name=john">예제 01</a> --%>
</body>
</html>