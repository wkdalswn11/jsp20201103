<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
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
<h1>JSTL core 태그들</h1>
<h3>책 295쪽</h3>
<%-- 필수 > 2 > 3 > 4 순으로하기 안써져있는건 굳이안해도된다 --%>
<ul>  
	<li>set(복습2)</li>	<%-- attribute 관련 --%>
	<li>remove(복습2)</li> <%-- attribute 관련 --%>
	<li>if (복습필수)</li>		<%-- 제어문 관련 --%>
	<li>choose(복습 필수)</li>	<%-- 제어문 관련 --%>
	<li>forEach(복습 필수)</li><%-- 제어문 관련 --%>
	<li>forTokens</li>
	<li>import</li>
	<li>redirect</li>
	<li>url(복습4)</li>
	<li>catch</li>
	<li>out(복습3)</li>
</ul>
</body>
</html>