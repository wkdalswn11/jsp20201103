<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
 request.setAttribute("name", "장민주");
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

요청URL : ${pageContext.request.requestURL } <br /> <%-- getRequestURL() 메소드가 있기때문에 ${pageContext.request.requestURL을 사용할수있는 것 --%>
request의 name 속성 : ${requestScope.name } <br />
code의 파라미터 : ${param.code } <br />
id의 파라미터 : ${param.id }
</body>
</html>