<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
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
<h1>body ex3</h1>
<%= request.getParameter("name") %>

<jsp:include page="navbarEx3.jsp">
	<jsp:param value="newvalue" name="newparam"/>
	<jsp:param value="newvalue2" name="newparam2"/>
</jsp:include>
<!--  일회성이라 아래에선 읽지못하고 null이 나옴 -->

<hr />
<%= request.getParameter("newparam") %>
</body>
</html>