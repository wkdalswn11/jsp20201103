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
<title>pageContext findAttribute</title>
</head>
<body>
<h1>pageContext findAttribute</h1>
<% 												// 처음에는 pageval1 이나옴
pageContext.setAttribute("myattr1","pageval1"); // 주석처리히면 reqval1이나옴
request.setAttribute("myattr1","reqval1");		// 주석처리하면 sesval1이나옴
session.setAttribute("myattr1","sesval1");		// 주석처리하면 appval1이나옴
application.setAttribute("myattr1","appval1");
%>

<%= pageContext.findAttribute("myattr1") %>
</body>
</html>