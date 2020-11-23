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
${Math.abs(-5) } <br />  <%-- Math.abs 는 절댓값을 가져옴 --%>
${Math.random() } <br /> <%-- Math.random 는 랜덤값을 가져옴 --%>
${Math.round(3.14) } <br /> <%-- Math.round 는 소수점 첫째 자리에서 반올림해준 값을 가져옴 --%>

<hr />
<%
double num = 5.5;
pageContext.setAttribute("num", num);
%>
${Math.round(num) } <br /> <%-- 4가지 영역에 num이 있어야 한다 --%>
</body>
</html>