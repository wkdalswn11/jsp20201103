<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
String id = request.getParameter("id");
String password = request.getParameter("password");

if (id != null & password !=null) {
	if (id.equals(password)) {
		session.setAttribute("id" , id);
	} else {
		%>
		 
		<script>
		alert("ㅋㅋㅋ 아디비번기억안나냐 ? ㅋ Hint: 앞뒤가 똑같은 전화번호");
		history.go(-1);
		</script>  
	<%		
	}
	
} else {
	response.sendRedirect("loginForm.jsp");
}
%>
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
<h1><%= session.getAttribute("id") %>님 반갑냐? ㅋ</h1>
<a href="logout.jsp">로그 아웃</a>
</body>
</html>
